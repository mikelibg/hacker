.class public final Lcom/millennialmedia/android/MMAdViewSDK;
.super Ljava/lang/Object;
.source "MMAdViewSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdViewSDK$Log;
    }
.end annotation


# static fields
.field static final BASEURL:Ljava/lang/String; = "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

.field public static final DEFAULT_APID:Ljava/lang/String; = "28911"

.field public static final DEFAULT_VIEWID:I = 0x711e41a1

.field static final ERR_BROKENREF:Ljava/lang/String; = "The reference to the ad view was broken."

.field static final ERR_NOACTIVITY:Ljava/lang/String; = "The ad view does not have a parent activity."

.field static final HTML:I = 0x2

.field static final IMAGE:I = 0x4

.field static final PACKAGE:I = 0x3

.field static final PREFS_NAME:Ljava/lang/String; = "MillennialMediaSettings"

.field static final PRIVATE_CACHE_DIR:Ljava/lang/String; = ".mmsyscache"

.field public static final SDKLOG:Ljava/lang/String; = "MillennialMediaSDK"

.field public static final SDKVER:Ljava/lang/String; = "4.5.1-12.2.2.a"

.field static final VIDEO:I = 0x1

.field private static getAuidOrHdidValue:Ljava/lang/String;

.field private static getAuidValue:Ljava/lang/String;

.field private static getHdidValue:Ljava/lang/String;

.field private static getMMdidValue:Ljava/lang/String;

.field public static logLevel:I

.field static macId:Ljava/lang/String;

.field public static privateLogging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    sput-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdidValue:Ljava/lang/String;

    .line 216
    sput-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidValue:Ljava/lang/String;

    .line 258
    sput-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->getHdidValue:Ljava/lang/String;

    .line 299
    sput-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 6
    .parameter "ba"

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 253
    .local v0, hex:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 254
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 227
    .local v0, auid:Ljava/lang/String;
    sget-object v3, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidValue:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 228
    sget-object v3, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidValue:Ljava/lang/String;

    .line 247
    :goto_0
    return-object v3

    .line 231
    :cond_0
    const-string v0, "android_idandroid_id"

    .line 232
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 233
    .local v2, tm:Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    .line 236
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 241
    :goto_1
    const/4 v2, 0x0

    .line 243
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz p0, :cond_3

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 246
    :cond_4
    const/4 v0, 0x0

    .line 247
    :cond_5
    sput-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidValue:Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1
.end method

.method static getAuidOrHdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 303
    invoke-static {p0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-boolean v0, v1, Lcom/millennialmedia/android/HandShake;->hdid:Z

    .line 305
    .local v0, hdid:Z
    sget-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 307
    if-eqz v0, :cond_0

    sget-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    const-string v2, "mmh_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    sget-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    .line 316
    :goto_0
    return-object v1

    .line 309
    :cond_0
    if-nez v0, :cond_1

    sget-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    const-string v2, "mmh_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    sget-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    goto :goto_0

    .line 313
    :cond_1
    if-eqz v0, :cond_2

    .line 314
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewSDK;->getHdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    goto :goto_0

    .line 316
    :cond_2
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewSDK;->getAuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    goto :goto_0
.end method

.method static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 97
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 98
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 99
    const-string v0, "unknown"

    .line 171
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 103
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 104
    .local v3, type:I
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 106
    .local v2, subType:I
    if-ne v3, v5, :cond_1

    .line 107
    const-string v0, "wifi"

    .local v0, connectionType:Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v0           #connectionType:Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_2

    .line 110
    packed-switch v2, :pswitch_data_0

    .line 158
    const-string v0, "unknown"

    .line 159
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 113
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_0
    const-string v0, "1xrtt"

    .line 114
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_1
    const-string v0, "cdma"

    .line 117
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 119
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_2
    const-string v0, "edge"

    .line 120
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_3
    const-string v0, "ehrpd"

    .line 123
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 125
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_4
    const-string v0, "evdo_0"

    .line 126
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_5
    const-string v0, "evdo_a"

    .line 129
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_6
    const-string v0, "evdo_b"

    .line 132
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 134
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_7
    const-string v0, "gprs"

    .line 135
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 137
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_8
    const-string v0, "hsdpa"

    .line 138
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 140
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_9
    const-string v0, "hspa"

    .line 141
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_a
    const-string v0, "hspap"

    .line 144
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_b
    const-string v0, "hsupa"

    .line 147
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 149
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_c
    const-string v0, "iden"

    .line 150
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_d
    const-string v0, "lte"

    .line 153
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 155
    .end local v0           #connectionType:Ljava/lang/String;
    :pswitch_e
    const-string v0, "umts"

    .line 156
    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v0           #connectionType:Ljava/lang/String;
    :cond_2
    const-string v0, "unknown"

    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v0           #connectionType:Ljava/lang/String;
    .end local v2           #subType:I
    .end local v3           #type:I
    :cond_3
    const-string v0, "offline"

    .restart local v0       #connectionType:Ljava/lang/String;
    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method static getDpi(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 326
    const-string v0, "160"

    return-object v0
.end method

.method static getHdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 271
    sget-object v6, Lcom/millennialmedia/android/MMAdViewSDK;->getHdidValue:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 272
    sget-object v5, Lcom/millennialmedia/android/MMAdViewSDK;->getHdidValue:Ljava/lang/String;

    .line 296
    :cond_0
    :goto_0
    return-object v5

    .line 274
    :cond_1
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewSDK;->getAuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, auid:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mmh_"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .local v3, hdid:Ljava/lang/StringBuilder;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 283
    .local v4, md:Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 284
    .local v2, hashBytes:[B
    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v6, "SHA1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 288
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 289
    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/millennialmedia/android/MMAdViewSDK;->getHdidValue:Ljava/lang/String;

    goto :goto_0

    .line 291
    .end local v2           #hashBytes:[B
    .end local v4           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 293
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static declared-synchronized getMMdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 183
    const-class v6, Lcom/millennialmedia/android/MMAdViewSDK;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdidValue:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 184
    sget-object v5, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdidValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v5

    .line 186
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, mmdid:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "mmh_"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .local v4, mmdidBuilder:Ljava/lang/StringBuilder;
    :try_start_2
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 195
    .local v2, md:Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 196
    .local v1, hashBytes:[B
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 200
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 201
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdidValue:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 183
    .end local v1           #hashBytes:[B
    .end local v2           #md:Ljava/security/MessageDigest;
    .end local v3           #mmdid:Ljava/lang/String;
    .end local v4           #mmdidBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 203
    .restart local v3       #mmdid:Ljava/lang/String;
    .restart local v4       #mmdidBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method static isConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 86
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static declared-synchronized setMMdid(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 213
    const-class v0, Lcom/millennialmedia/android/MMAdViewSDK;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdidValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit v0

    return-void

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
