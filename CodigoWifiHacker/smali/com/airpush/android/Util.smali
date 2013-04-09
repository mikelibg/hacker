.class Lcom/airpush/android/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static IP1:Ljava/lang/String; = null

.field private static IP2:Ljava/lang/String; = null

.field private static final NETWORK_TYPE_EHRPD:I = 0xe

.field private static final NETWORK_TYPE_EVDO_B:I = 0xc

.field private static final NETWORK_TYPE_HSDPA:I = 0x8

.field private static final NETWORK_TYPE_HSPA:I = 0xa

.field private static final NETWORK_TYPE_HSPAP:I = 0xf

.field private static final NETWORK_TYPE_HSUPA:I = 0x9

.field private static final NETWORK_TYPE_IDEN:I = 0xb

.field private static final NETWORK_TYPE_LTE:I = 0xd

.field private static adImageUrl:Ljava/lang/String;

.field private static adType:Ljava/lang/String;

.field private static apiKey:Ljava/lang/String;

.field private static appID:Ljava/lang/String;

.field private static campId:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static creativeId:Ljava/lang/String;

.field private static delivery_time:Ljava/lang/String;

.field private static device_unique_type:Ljava/lang/String;

.field private static doPush:Z

.field private static expiry_time:J

.field private static header:Ljava/lang/String;

.field private static icon:I

.field private static imei:Ljava/lang/String;

.field private static jsonstr:Ljava/lang/String;

.field private static landingPageAdUrl:Ljava/lang/String;

.field private static lastLocationTime:J

.field private static latitude:Ljava/lang/String;

.field private static longitude:Ljava/lang/String;

.field private static notificationUrl:Ljava/lang/String;

.field private static notification_text:Ljava/lang/String;

.field private static notification_title:Ljava/lang/String;

.field private static phoneNumber:Ljava/lang/String;

.field private static sms:Ljava/lang/String;

.field private static testmode:Z

.field private static trayEvents:Ljava/lang/String;

.field private static user_agent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/Util;->longitude:Ljava/lang/String;

    .line 44
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/Util;->latitude:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/airpush/android/Util;->adType:Ljava/lang/String;

    .line 64
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/airpush/android/Util;->lastLocationTime:J

    .line 700
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/Util;->imei:Ljava/lang/String;

    .line 701
    const-string v0, "airpush"

    sput-object v0, Lcom/airpush/android/Util;->apiKey:Ljava/lang/String;

    .line 702
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/Util;->appID:Ljava/lang/String;

    .line 703
    sput-boolean v2, Lcom/airpush/android/Util;->testmode:Z

    .line 704
    sput-boolean v2, Lcom/airpush/android/Util;->doPush:Z

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "loccontext"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sput-object p1, Lcom/airpush/android/Util;->context:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    sput-object p0, Lcom/airpush/android/Util;->jsonstr:Ljava/lang/String;

    return-void
.end method

.method static checkInternetConnection(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 646
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 648
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    const/4 v2, 0x1

    .line 662
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v2

    .line 653
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :cond_0
    const-string v3, "AirpushSDK"

    const-string v4, "Internet Connection not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 657
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 658
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static getAdImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    sget-object v0, Lcom/airpush/android/Util;->adImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static getAdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    sget-object v0, Lcom/airpush/android/Util;->adType:Ljava/lang/String;

    return-object v0
.end method

.method static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 205
    if-nez p0, :cond_0

    .line 206
    const-string v0, ""

    .line 207
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/airpush/android/Util;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method static getApiKeyFromJSON()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/airpush/android/Util;->getJsonstr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, json:Lorg/json/JSONObject;
    const-string v1, "authkey"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    :goto_0
    return-object v1

    .line 412
    :catch_0
    move-exception v1

    .line 414
    const-string v1, "invalid key"

    goto :goto_0
.end method

.method static getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/airpush/android/Util;->appID:Ljava/lang/String;

    return-object v0
.end method

.method static getAppIdFromJSON()Ljava/lang/String;
    .locals 2

    .prologue
    .line 400
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/airpush/android/Util;->getJsonstr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, json:Lorg/json/JSONObject;
    const-string v1, "appid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 404
    :goto_0
    return-object v1

    .line 402
    :catch_0
    move-exception v1

    .line 404
    const-string v1, ""

    goto :goto_0
.end method

.method static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 667
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 670
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 674
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/lang/String;

    .line 680
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :goto_2
    return-object v1

    .line 671
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 672
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 674
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v1, "(unknown)"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 677
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v2

    .line 678
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 680
    const-string v1, ""

    goto :goto_2
.end method

.method static getCampId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    sget-object v0, Lcom/airpush/android/Util;->campId:Ljava/lang/String;

    return-object v0
.end method

.method static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 228
    if-nez p0, :cond_0

    .line 229
    const-string v1, ""

    .line 236
    :goto_0
    return-object v1

    .line 230
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 232
    .local v0, manager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 234
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 236
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method static getConnectionType(Landroid/content/Context;)I
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 259
    if-nez p0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v2

    .line 261
    :cond_1
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 263
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 264
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/airpush/android/Util;->context:Landroid/content/Context;

    return-object v0
.end method

.method static getCountryName(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 589
    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v7, v2

    const-string v1, ""

    aput-object v1, v7, v3

    .line 592
    .local v7, country:[Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 593
    .local v0, geocoder:Landroid/location/Geocoder;
    sget-object v1, Lcom/airpush/android/Util;->latitude:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/airpush/android/Util;->latitude:Ljava/lang/String;

    const-string v2, "invalid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/airpush/android/Util;->longitude:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/airpush/android/Util;->longitude:Ljava/lang/String;

    const-string v2, "invalid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    .end local v0           #geocoder:Landroid/location/Geocoder;
    :cond_0
    :goto_0
    return-object v7

    .line 596
    .restart local v0       #geocoder:Landroid/location/Geocoder;
    :cond_1
    sget-object v1, Lcom/airpush/android/Util;->latitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    sget-object v3, Lcom/airpush/android/Util;->longitude:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v6

    .line 598
    .local v6, addresses:Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v2

    .line 600
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v2

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Postal Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v2, v7, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Country Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 604
    .end local v0           #geocoder:Landroid/location/Geocoder;
    .end local v6           #addresses:Ljava/util/List;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 610
    :catch_1
    move-exception v8

    .line 612
    .local v8, e:Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 607
    .end local v8           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static getCreativeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    sget-object v0, Lcom/airpush/android/Util;->creativeId:Ljava/lang/String;

    return-object v0
.end method

.method static getDate()Ljava/lang/String;
    .locals 7

    .prologue
    .line 186
    :try_start_0
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 187
    .local v1, format:Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 192
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 190
    :catch_0
    move-exception v3

    .line 192
    const-string v2, "00"

    goto :goto_0
.end method

.method static getDelivery_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    sget-object v0, Lcom/airpush/android/Util;->delivery_time:Ljava/lang/String;

    return-object v0
.end method

.method static getDevice_unique_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    sget-object v0, Lcom/airpush/android/Util;->device_unique_type:Ljava/lang/String;

    return-object v0
.end method

.method static getExpiry_time()J
    .locals 2

    .prologue
    .line 514
    sget-wide v0, Lcom/airpush/android/Util;->expiry_time:J

    return-wide v0
.end method

.method static getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    sget-object v0, Lcom/airpush/android/Util;->header:Ljava/lang/String;

    return-object v0
.end method

.method static getIP1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    sget-object v0, Lcom/airpush/android/Util;->IP1:Ljava/lang/String;

    return-object v0
.end method

.method static getIP2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    sget-object v0, Lcom/airpush/android/Util;->IP2:Ljava/lang/String;

    return-object v0
.end method

.method static getIcon()I
    .locals 1

    .prologue
    .line 216
    sget v0, Lcom/airpush/android/Util;->icon:I

    return v0
.end method

.method static getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/airpush/android/Util;->imei:Ljava/lang/String;

    return-object v0
.end method

.method static getJsonstr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lcom/airpush/android/Util;->jsonstr:Ljava/lang/String;

    return-object v0
.end method

.method static getLandingPageAdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    sget-object v0, Lcom/airpush/android/Util;->landingPageAdUrl:Ljava/lang/String;

    return-object v0
.end method

.method static getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 618
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 619
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getLastLocationTime()J
    .locals 2

    .prologue
    .line 182
    sget-wide v0, Lcom/airpush/android/Util;->lastLocationTime:J

    return-wide v0
.end method

.method static getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/airpush/android/Util;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method static getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/airpush/android/Util;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method static getMessageIntervalTime()J
    .locals 2

    .prologue
    .line 531
    sget-boolean v0, Lcom/airpush/android/Util;->testmode:Z

    if-eqz v0, :cond_0

    .line 532
    const-wide/32 v0, 0x1d4c0

    .line 534
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0xdbba00

    goto :goto_0
.end method

.method static getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 241
    if-nez p0, :cond_0

    .line 242
    const-string v1, ""

    .line 249
    :goto_0
    return-object v1

    .line 244
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 246
    .local v0, manager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 247
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 249
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method static getNetworksubType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 272
    if-eqz p0, :cond_0

    .line 273
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 275
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 276
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    .line 281
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #ni:Landroid/net/NetworkInfo;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method static getNotificationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    sget-object v0, Lcom/airpush/android/Util;->notificationUrl:Ljava/lang/String;

    return-object v0
.end method

.method static getNotification_text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/airpush/android/Util;->notification_text:Ljava/lang/String;

    return-object v0
.end method

.method static getNotification_title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    sget-object v0, Lcom/airpush/android/Util;->notification_title:Ljava/lang/String;

    return-object v0
.end method

.method static getNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 624
    const-string v1, ""

    .line 625
    .local v1, number:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 626
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 628
    .local v0, manager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 631
    .end local v0           #manager:Landroid/telephony/TelephonyManager;
    :cond_0
    return-object v1
.end method

.method static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 221
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    const-string v0, ""

    goto :goto_0
.end method

.method static getPhoneModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method static getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/airpush/android/Util;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "5.0"

    return-object v0
.end method

.method static getScreenDp(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 636
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 637
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 638
    .local v0, density:F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static getScreen_size(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 548
    const-string v1, ""

    .line 549
    .local v1, size:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 550
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 552
    .local v0, display:Landroid/view/Display;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 554
    .end local v0           #display:Landroid/view/Display;
    :cond_0
    return-object v1
.end method

.method static getSms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    sget-object v0, Lcom/airpush/android/Util;->sms:Ljava/lang/String;

    return-object v0
.end method

.method static getTrayEvents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    sget-object v0, Lcom/airpush/android/Util;->trayEvents:Ljava/lang/String;

    return-object v0
.end method

.method static getUser_agent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/airpush/android/Util;->user_agent:Ljava/lang/String;

    return-object v0
.end method

.method static getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isConnectionFast(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 288
    if-nez p0, :cond_1

    .line 343
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 290
    :cond_1
    :try_start_0
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 292
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 293
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 296
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 297
    .local v4, type:I
    if-ne v4, v6, :cond_2

    .line 298
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "CONNECTED VIA WIFI"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v5, v6

    .line 299
    goto :goto_0

    .line 300
    :cond_2
    if-nez v4, :cond_0

    .line 301
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 302
    .local v3, subType:I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v5, v6

    .line 322
    goto :goto_0

    :pswitch_2
    move v5, v6

    .line 310
    goto :goto_0

    :pswitch_3
    move v5, v6

    .line 312
    goto :goto_0

    :pswitch_4
    move v5, v6

    .line 316
    goto :goto_0

    :pswitch_5
    move v5, v6

    .line 318
    goto :goto_0

    :pswitch_6
    move v5, v6

    .line 320
    goto :goto_0

    :pswitch_7
    move v5, v6

    .line 324
    goto :goto_0

    :pswitch_8
    move v5, v6

    .line 326
    goto :goto_0

    :pswitch_9
    move v5, v6

    .line 328
    goto :goto_0

    :pswitch_a
    move v5, v6

    .line 332
    goto :goto_0

    .line 339
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #ni:Landroid/net/NetworkInfo;
    .end local v3           #subType:I
    .end local v4           #type:I
    :catch_0
    move-exception v1

    .line 341
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method static isDoPush()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/airpush/android/Util;->doPush:Z

    return v0
.end method

.method static isInstallFromMarketOnly(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 685
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isTablet(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 91
    .local v2, isTablet:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 92
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    iget v9, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v4, v8, v9

    .line 93
    .local v4, screenWidth:F
    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    iget v9, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v3, v8, v9

    .line 94
    .local v3, screenHeight:F
    float-to-double v8, v4

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v10, v3

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v5

    .line 96
    .local v5, size:D
    const-wide/high16 v8, 0x4018

    cmpl-double v8, v5, v8

    if-ltz v8, :cond_0

    const/4 v2, 0x1

    .line 104
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v3           #screenHeight:F
    .end local v4           #screenWidth:F
    .end local v5           #size:D
    :goto_0
    return v2

    .line 96
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    .restart local v3       #screenHeight:F
    .restart local v4       #screenWidth:F
    .restart local v5       #size:D
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 97
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v3           #screenHeight:F
    .end local v4           #screenWidth:F
    .end local v5           #size:D
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/NullPointerException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 102
    .local v7, t:Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static isTestmode()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/airpush/android/Util;->testmode:Z

    return v0
.end method

.method static printDebugLog(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, isLogable:Z
    return-void
.end method

.method static printLog(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 695
    const-string v0, "System.out"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void
.end method

.method static setAdImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "locadImageUrl"

    .prologue
    .line 502
    sput-object p0, Lcom/airpush/android/Util;->adImageUrl:Ljava/lang/String;

    .line 503
    return-void
.end method

.method static setAdType(Ljava/lang/String;)V
    .locals 0
    .parameter "locadType"

    .prologue
    .line 453
    sput-object p0, Lcom/airpush/android/Util;->adType:Ljava/lang/String;

    .line 454
    return-void
.end method

.method static setApiKey(Ljava/lang/String;)V
    .locals 0
    .parameter "locapiKey"

    .prologue
    .line 128
    sput-object p0, Lcom/airpush/android/Util;->apiKey:Ljava/lang/String;

    .line 129
    return-void
.end method

.method static setAppID(Ljava/lang/String;)V
    .locals 0
    .parameter "locappID"

    .prologue
    .line 136
    sput-object p0, Lcom/airpush/android/Util;->appID:Ljava/lang/String;

    .line 137
    return-void
.end method

.method static setAppInfo(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 419
    invoke-static {p0}, Lcom/airpush/android/Util;->setJsonstr(Landroid/content/Context;)V

    .line 420
    invoke-static {}, Lcom/airpush/android/Util;->getAppIdFromJSON()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airpush/android/Util;->setAppID(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/airpush/android/Util;->getApiKeyFromJSON()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airpush/android/Util;->setApiKey(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method static setCampId(Ljava/lang/String;)V
    .locals 0
    .parameter "loccampId"

    .prologue
    .line 429
    sput-object p0, Lcom/airpush/android/Util;->campId:Ljava/lang/String;

    .line 430
    return-void
.end method

.method static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "loccontext"

    .prologue
    .line 112
    sput-object p0, Lcom/airpush/android/Util;->context:Landroid/content/Context;

    .line 113
    return-void
.end method

.method static setCreativeId(Ljava/lang/String;)V
    .locals 0
    .parameter "loccreativeId"

    .prologue
    .line 437
    sput-object p0, Lcom/airpush/android/Util;->creativeId:Ljava/lang/String;

    .line 438
    return-void
.end method

.method static setDelivery_time(Ljava/lang/String;)V
    .locals 0
    .parameter "locdelivery_time"

    .prologue
    .line 510
    sput-object p0, Lcom/airpush/android/Util;->delivery_time:Ljava/lang/String;

    .line 511
    return-void
.end method

.method static setDevice_unique_type(Ljava/lang/String;)V
    .locals 0
    .parameter "locdevice_unique_type"

    .prologue
    .line 543
    sput-object p0, Lcom/airpush/android/Util;->device_unique_type:Ljava/lang/String;

    .line 544
    return-void
.end method

.method static setDoPush(Z)V
    .locals 0
    .parameter "locdoPush"

    .prologue
    .line 152
    sput-boolean p0, Lcom/airpush/android/Util;->doPush:Z

    .line 153
    return-void
.end method

.method static setExpiry_time(J)V
    .locals 0
    .parameter "locexpiry_time"

    .prologue
    .line 518
    sput-wide p0, Lcom/airpush/android/Util;->expiry_time:J

    .line 519
    return-void
.end method

.method static setHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "locheader"

    .prologue
    .line 469
    sput-object p0, Lcom/airpush/android/Util;->header:Ljava/lang/String;

    .line 470
    return-void
.end method

.method static setIP1(Ljava/lang/String;)V
    .locals 0
    .parameter "iP1"

    .prologue
    .line 564
    sput-object p0, Lcom/airpush/android/Util;->IP1:Ljava/lang/String;

    .line 565
    return-void
.end method

.method static setIP2(Ljava/lang/String;)V
    .locals 0
    .parameter "iP2"

    .prologue
    .line 574
    sput-object p0, Lcom/airpush/android/Util;->IP2:Ljava/lang/String;

    .line 575
    return-void
.end method

.method static setIcon(I)V
    .locals 0
    .parameter "locicon"

    .prologue
    .line 212
    sput p0, Lcom/airpush/android/Util;->icon:I

    .line 213
    return-void
.end method

.method static setImei(Ljava/lang/String;)V
    .locals 0
    .parameter "locimei"

    .prologue
    .line 120
    sput-object p0, Lcom/airpush/android/Util;->imei:Ljava/lang/String;

    .line 121
    return-void
.end method

.method static setJsonstr(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://api.airpush.com/model/user/getappinfo.php?packageName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/airpush/android/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, urlString:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/airpush/android/Util$1;

    invoke-direct {v3, v1}, Lcom/airpush/android/Util$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 389
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static setLandingPageAdUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "fullPageAdUrl"

    .prologue
    .line 584
    sput-object p0, Lcom/airpush/android/Util;->landingPageAdUrl:Ljava/lang/String;

    .line 585
    return-void
.end method

.method static setLastLocationTime(J)V
    .locals 0
    .parameter "loclastLocationTime"

    .prologue
    .line 179
    sput-wide p0, Lcom/airpush/android/Util;->lastLocationTime:J

    .line 180
    return-void
.end method

.method static setLatitude(Ljava/lang/String;)V
    .locals 0
    .parameter "loclatitude"

    .prologue
    .line 168
    sput-object p0, Lcom/airpush/android/Util;->latitude:Ljava/lang/String;

    .line 169
    return-void
.end method

.method static setLongitude(Ljava/lang/String;)V
    .locals 0
    .parameter "loclongitude"

    .prologue
    .line 176
    sput-object p0, Lcom/airpush/android/Util;->longitude:Ljava/lang/String;

    .line 177
    return-void
.end method

.method static setNotificationUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "locnotificationUrl"

    .prologue
    .line 478
    sput-object p0, Lcom/airpush/android/Util;->notificationUrl:Ljava/lang/String;

    .line 479
    return-void
.end method

.method static setNotification_text(Ljava/lang/String;)V
    .locals 0
    .parameter "locnotification_text"

    .prologue
    .line 494
    sput-object p0, Lcom/airpush/android/Util;->notification_text:Ljava/lang/String;

    .line 495
    return-void
.end method

.method static setNotification_title(Ljava/lang/String;)V
    .locals 0
    .parameter "locnotification_title"

    .prologue
    .line 486
    sput-object p0, Lcom/airpush/android/Util;->notification_title:Ljava/lang/String;

    .line 487
    return-void
.end method

.method static setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "locphoneNumber"

    .prologue
    .line 445
    sput-object p0, Lcom/airpush/android/Util;->phoneNumber:Ljava/lang/String;

    .line 446
    return-void
.end method

.method static setSms(Ljava/lang/String;)V
    .locals 0
    .parameter "locsms"

    .prologue
    .line 526
    sput-object p0, Lcom/airpush/android/Util;->sms:Ljava/lang/String;

    .line 527
    return-void
.end method

.method static setTestmode(Z)V
    .locals 0
    .parameter "loctestmode"

    .prologue
    .line 144
    sput-boolean p0, Lcom/airpush/android/Util;->testmode:Z

    .line 145
    return-void
.end method

.method static setTrayEvents(Ljava/lang/String;)V
    .locals 0
    .parameter "loctrayEvents"

    .prologue
    .line 461
    sput-object p0, Lcom/airpush/android/Util;->trayEvents:Ljava/lang/String;

    .line 462
    return-void
.end method

.method static setUser_agent(Ljava/lang/String;)V
    .locals 0
    .parameter "locuser_agent"

    .prologue
    .line 156
    sput-object p0, Lcom/airpush/android/Util;->user_agent:Ljava/lang/String;

    .line 157
    return-void
.end method
