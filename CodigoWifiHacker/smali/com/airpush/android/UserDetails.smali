.class Lcom/airpush/android/UserDetails;
.super Ljava/lang/Object;
.source "UserDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airpush/android/UserDetails$DeviceUuidFactory;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/airpush/android/UserDetails;->context:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/airpush/android/UserDetails;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/airpush/android/UserDetails;->location:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method getImeiNoMd5()Ljava/lang/String;
    .locals 9

    .prologue
    .line 40
    :try_start_0
    iget-object v5, p0, Lcom/airpush/android/UserDetails;->context:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, imeinumber:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    :cond_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    .local v0, c:Ljava/lang/Class;
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 45
    .local v1, get:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ro.serialno"

    aput-object v7, v5, v6

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #imeinumber:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 47
    .restart local v3       #imeinumber:Ljava/lang/String;
    const-string v5, "serial"

    invoke-static {v5}, Lcom/airpush/android/Util;->setDevice_unique_type(Ljava/lang/String;)V

    .line 49
    if-eqz v3, :cond_1

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50
    :cond_1
    iget-object v5, p0, Lcom/airpush/android/UserDetails;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.permission.ACCESS_WIFI_STATE"

    iget-object v7, p0, Lcom/airpush/android/UserDetails;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/airpush/android/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 51
    iget-object v5, p0, Lcom/airpush/android/UserDetails;->context:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 52
    .local v4, manager:Landroid/net/wifi/WifiManager;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WIFI "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 55
    const-string v5, "WIFI_MAC"

    invoke-static {v5}, Lcom/airpush/android/Util;->setDevice_unique_type(Ljava/lang/String;)V

    .line 72
    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #get:Ljava/lang/reflect/Method;
    .end local v3           #imeinumber:Ljava/lang/String;
    .end local v4           #manager:Landroid/net/wifi/WifiManager;
    :cond_2
    :goto_0
    return-object v3

    .line 59
    .restart local v0       #c:Ljava/lang/Class;
    .restart local v1       #get:Ljava/lang/reflect/Method;
    .restart local v3       #imeinumber:Ljava/lang/String;
    :cond_3
    new-instance v5, Lcom/airpush/android/UserDetails$DeviceUuidFactory;

    iget-object v6, p0, Lcom/airpush/android/UserDetails;->context:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/airpush/android/UserDetails$DeviceUuidFactory;-><init>(Lcom/airpush/android/UserDetails;Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/airpush/android/UserDetails$DeviceUuidFactory;->getDeviceUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    const-string v5, "UUID"

    invoke-static {v5}, Lcom/airpush/android/Util;->setDevice_unique_type(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #get:Ljava/lang/reflect/Method;
    .end local v3           #imeinumber:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 70
    .local v2, ignored:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const-string v3, "invalid"

    goto :goto_0

    .line 65
    .end local v2           #ignored:Ljava/lang/Exception;
    .restart local v3       #imeinumber:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v5, "IMEI"

    invoke-static {v5}, Lcom/airpush/android/Util;->setDevice_unique_type(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method getLocation()Landroid/location/Location;
    .locals 13

    .prologue
    .line 103
    const-string v2, "fetching Location."

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 106
    :try_start_0
    invoke-static {}, Lcom/airpush/android/Util;->getLatitude()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/airpush/android/Util;->getLastLocationTime()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 108
    :cond_0
    const/4 v2, 0x0

    .line 197
    :goto_0
    return-object v2

    .line 110
    :cond_1
    iget-object v12, p0, Lcom/airpush/android/UserDetails;->context:Landroid/content/Context;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :try_start_1
    invoke-static {}, Lcom/airpush/android/Util;->getLatitude()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/airpush/android/Util;->getLastLocationTime()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 114
    :cond_2
    const-string v2, "failed in last"

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 115
    monitor-exit v12

    const/4 v2, 0x0

    goto :goto_0

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/airpush/android/UserDetails;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    iget-object v4, p0, Lcom/airpush/android/UserDetails;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v7, 0x1

    .line 120
    .local v7, ACCESS_COARSE_LOCATION:Z
    :goto_1
    iget-object v2, p0, Lcom/airpush/android/UserDetails;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    iget-object v4, p0, Lcom/airpush/android/UserDetails;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    const/4 v8, 0x1

    .line 122
    .local v8, ACCESS_FINE_LOACTION:Z
    :goto_2
    if-eqz v7, :cond_b

    if-eqz v8, :cond_b

    .line 124
    iget-object v2, p0, Lcom/airpush/android/UserDetails;->context:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 126
    .local v0, mlocManager:Landroid/location/LocationManager;
    if-nez v0, :cond_6

    .line 127
    const-string v2, "Location manager null"

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 128
    monitor-exit v12

    const/4 v2, 0x0

    goto :goto_0

    .line 118
    .end local v0           #mlocManager:Landroid/location/LocationManager;
    .end local v7           #ACCESS_COARSE_LOCATION:Z
    .end local v8           #ACCESS_FINE_LOACTION:Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 120
    .restart local v7       #ACCESS_COARSE_LOCATION:Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 131
    .restart local v0       #mlocManager:Landroid/location/LocationManager;
    .restart local v8       #ACCESS_FINE_LOACTION:Z
    :cond_6
    new-instance v9, Landroid/location/Criteria;

    invoke-direct {v9}, Landroid/location/Criteria;-><init>()V

    .line 132
    .local v9, criteria:Landroid/location/Criteria;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 133
    const/4 v1, 0x0

    .line 135
    .local v1, provider:Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 136
    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 137
    const/4 v2, 0x1

    invoke-virtual {v0, v9, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_7
    if-nez v1, :cond_8

    if-eqz v8, :cond_8

    .line 141
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 142
    const/4 v2, 0x1

    invoke-virtual {v0, v9, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 145
    :cond_8
    if-nez v1, :cond_9

    .line 146
    const-string v2, "Provider null"

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 147
    monitor-exit v12

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 150
    :cond_9
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/UserDetails;->location:Landroid/location/Location;

    .line 151
    iget-object v2, p0, Lcom/airpush/android/UserDetails;->location:Landroid/location/Location;

    if-eqz v2, :cond_a

    .line 152
    const-string v2, "Location found via get last known location."

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/airpush/android/UserDetails;->location:Landroid/location/Location;

    monitor-exit v12

    goto/16 :goto_0

    .line 110
    .end local v0           #mlocManager:Landroid/location/LocationManager;
    .end local v1           #provider:Ljava/lang/String;
    .end local v7           #ACCESS_COARSE_LOCATION:Z
    .end local v8           #ACCESS_FINE_LOACTION:Z
    .end local v9           #criteria:Landroid/location/Criteria;
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 190
    :catch_0
    move-exception v10

    .line 192
    .local v10, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occured while fetching location. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    .line 197
    .end local v10           #e:Ljava/lang/Exception;
    :goto_3
    iget-object v2, p0, Lcom/airpush/android/UserDetails;->location:Landroid/location/Location;

    goto/16 :goto_0

    .line 155
    .restart local v0       #mlocManager:Landroid/location/LocationManager;
    .restart local v1       #provider:Ljava/lang/String;
    .restart local v7       #ACCESS_COARSE_LOCATION:Z
    .restart local v8       #ACCESS_FINE_LOACTION:Z
    .restart local v9       #criteria:Landroid/location/Criteria;
    :cond_a
    move-object v11, v0

    .line 157
    .local v11, finalizedLocationManager:Landroid/location/LocationManager;
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/airpush/android/Util;->setLastLocationTime(J)V

    .line 158
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/airpush/android/UserDetails$1;

    invoke-direct {v5, p0, v11}, Lcom/airpush/android/UserDetails$1;-><init>(Lcom/airpush/android/UserDetails;Landroid/location/LocationManager;)V

    .line 181
    iget-object v6, p0, Lcom/airpush/android/UserDetails;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    .line 158
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 110
    .end local v0           #mlocManager:Landroid/location/LocationManager;
    .end local v1           #provider:Ljava/lang/String;
    .end local v9           #criteria:Landroid/location/Criteria;
    .end local v11           #finalizedLocationManager:Landroid/location/LocationManager;
    :goto_4
    monitor-exit v12

    goto :goto_3

    .line 185
    :cond_b
    const-string v2, "Location permission not found."

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 194
    .end local v7           #ACCESS_COARSE_LOCATION:Z
    .end local v8           #ACCESS_FINE_LOACTION:Z
    :catch_1
    move-exception v10

    .line 195
    .local v10, e:Ljava/lang/Throwable;
    const-string v2, "AirpushSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in location: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method setImeiInMd5()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/airpush/android/UserDetails;->getImeiNoMd5()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, imeinumber:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "invalid"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    :cond_0
    const-string v5, "Can not get device unique id."

    invoke-static {v5}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    move v5, v6

    .line 98
    .end local v3           #imeinumber:Ljava/lang/String;
    :goto_0
    return v5

    .line 85
    .restart local v3       #imeinumber:Ljava/lang/String;
    :cond_1
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 86
    .local v4, mdEnc:Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v7, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 87
    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, imei:Ljava/lang/String;
    invoke-static {v2}, Lcom/airpush/android/Util;->setImei(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 91
    .end local v2           #imei:Ljava/lang/String;
    .end local v3           #imeinumber:Ljava/lang/String;
    .end local v4           #mdEnc:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 92
    .local v0, algorithmException:Ljava/security/NoSuchAlgorithmException;
    const-string v5, "AirpushSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error occured while converting IMEI to md5."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #algorithmException:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    move v5, v6

    .line 98
    goto :goto_0

    .line 94
    :catch_1
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
