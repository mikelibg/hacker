.class public Lcom/pad/android/util/AdRefValues;
.super Ljava/lang/Object;
.source "AdRefValues.java"


# static fields
.field private static final LB_LOG:Ljava/lang/String; = "LBAdConroller"

.field private static final SDK_LEVEL:Ljava/lang/String; = "00"

.field private static final SDK_VERSION:Ljava/lang/String; = "4"

.field private static dataretrieve:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pad/android/util/AdRefValues;->dataretrieve:Z

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adRefValues(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/util/List;ZII)Ljava/lang/String;
    .locals 35
    .parameter "ctx"
    .parameter "tm"
    .parameter "subid"
    .parameter
    .parameter "uL"
    .parameter "sWidth"
    .parameter "sHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/telephony/TelephonyManager;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;ZII)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, tokens:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v14, Ljava/util/ArrayList;

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .local v14, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p2, :cond_0

    .line 41
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "subid"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    if-eqz p3, :cond_1

    .line 47
    :try_start_0
    const-string v20, ""

    .line 48
    .local v20, str:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-lt v7, v0, :cond_7

    .line 53
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "tokens"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v28, "LBAdConroller"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Token Str = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v7           #j:I
    .end local v20           #str:Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "android_id"

    invoke-static/range {v28 .. v29}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, deviceId:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 66
    .local v3, cal:Ljava/util/Calendar;
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref1"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref2"

    sget-object v30, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref3"

    const-string v30, "Android"

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref4"

    invoke-static {}, Lcom/pad/android/util/AdRefValues;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref5"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v31, 0xf

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref6"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v31

    const-wide/16 v33, 0x3e8

    div-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-int v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref7"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref8"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    if-eqz p4, :cond_2

    .line 79
    :try_start_2
    const-string v28, "location"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/LocationManager;

    .line 81
    .local v9, lm:Landroid/location/LocationManager;
    const-string v28, "gps"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    .line 82
    .local v10, location:Landroid/location/Location;
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    .line 83
    .local v11, longitude:Ljava/lang/String;
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, latitude:Ljava/lang/String;
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref9"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref10"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 91
    .end local v8           #latitude:Ljava/lang/String;
    .end local v9           #lm:Landroid/location/LocationManager;
    .end local v10           #location:Landroid/location/Location;
    .end local v11           #longitude:Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_3
    sget-boolean v28, Lcom/pad/android/util/AdRefValues;->dataretrieve:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v28, :cond_3

    .line 95
    :try_start_4
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref11"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref12"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref13"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 103
    :cond_3
    :goto_3
    :try_start_5
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref15"

    const-string v30, "4"

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref16"

    const-string v30, "00"

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v16

    .line 106
    .local v16, ref17:Ljava/lang/String;
    :goto_4
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref17"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref18"

    sget-object v30, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref19"

    sget-object v30, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v28, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 113
    .local v4, cm:Landroid/net/ConnectivityManager;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 114
    .local v13, mobileNet:Landroid/net/NetworkInfo;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v26

    .line 115
    .local v26, wifiNet:Landroid/net/NetworkInfo;
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v12

    .line 116
    .local v12, mobile:Landroid/net/NetworkInfo$State;
    :goto_5
    if-eqz v26, :cond_a

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v23

    .line 117
    .local v23, wifi:Landroid/net/NetworkInfo$State;
    :goto_6
    const-string v15, ""

    .line 118
    .local v15, networkState:Ljava/lang/String;
    sget-object v28, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_4

    sget-object v28, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 120
    :cond_4
    const-string v15, "wifi"

    .line 126
    :cond_5
    :goto_7
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref20"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v18

    .line 131
    .local v18, simState:I
    const-string v19, ""

    .line 132
    .local v19, simStatus:Ljava/lang/String;
    packed-switch v18, :pswitch_data_0

    .line 153
    :goto_8
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref21"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v29, "LBAdConroller"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v28, "r20 - "

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "wifi"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_d

    const-string v28, "w"

    :goto_9
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, ", r21 - "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v28, "android.permission.ACCESS_WIFI_STATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_6

    .line 158
    const-string v28, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/wifi/WifiManager;

    .line 159
    .local v25, wifiMan:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v24

    .line 160
    .local v24, wifiInf:Landroid/net/wifi/WifiInfo;
    new-instance v28, Lorg/apache/http/message/BasicNameValuePair;

    const-string v29, "ref22"

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v24           #wifiInf:Landroid/net/wifi/WifiInfo;
    .end local v25           #wifiMan:Landroid/net/wifi/WifiManager;
    :cond_6
    const-string v17, ""

    .line 164
    .local v17, refStr:Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, x:I
    :goto_a
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_e

    .line 174
    const/16 v28, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/pad/android/util/AdEncryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v28

    .line 182
    .end local v3           #cal:Ljava/util/Calendar;
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v5           #deviceId:Ljava/lang/String;
    .end local v12           #mobile:Landroid/net/NetworkInfo$State;
    .end local v13           #mobileNet:Landroid/net/NetworkInfo;
    .end local v15           #networkState:Ljava/lang/String;
    .end local v16           #ref17:Ljava/lang/String;
    .end local v17           #refStr:Ljava/lang/String;
    .end local v18           #simState:I
    .end local v19           #simStatus:Ljava/lang/String;
    .end local v23           #wifi:Landroid/net/NetworkInfo$State;
    .end local v26           #wifiNet:Landroid/net/NetworkInfo;
    .end local v27           #x:I
    :goto_b
    return-object v28

    .line 50
    .restart local v7       #j:I
    .restart local v20       #str:Ljava/lang/String;
    :cond_7
    :try_start_6
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/http/message/BasicNameValuePair;

    .line 51
    .local v21, tmp:Lorg/apache/http/message/BasicNameValuePair;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/pad/android/util/AdEncryption;->base64encode([B)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/pad/android/util/AdEncryption;->base64encode([B)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v20

    .line 48
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 56
    .end local v7           #j:I
    .end local v20           #str:Ljava/lang/String;
    .end local v21           #tmp:Lorg/apache/http/message/BasicNameValuePair;
    :catch_0
    move-exception v6

    .line 58
    .local v6, e:Ljava/lang/Exception;
    const-string v28, "LBAdConroller"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Error while adding tokens - "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 105
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #cal:Ljava/util/Calendar;
    .restart local v5       #deviceId:Ljava/lang/String;
    :cond_8
    :try_start_7
    const-string v16, "0"

    goto/16 :goto_4

    .line 115
    .restart local v4       #cm:Landroid/net/ConnectivityManager;
    .restart local v13       #mobileNet:Landroid/net/NetworkInfo;
    .restart local v16       #ref17:Ljava/lang/String;
    .restart local v26       #wifiNet:Landroid/net/NetworkInfo;
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 116
    .restart local v12       #mobile:Landroid/net/NetworkInfo$State;
    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 122
    .restart local v15       #networkState:Ljava/lang/String;
    .restart local v23       #wifi:Landroid/net/NetworkInfo$State;
    :cond_b
    sget-object v28, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v28

    if-eq v12, v0, :cond_c

    sget-object v28, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v28

    if-ne v12, v0, :cond_5

    .line 124
    :cond_c
    const-string v15, "carrier"

    goto/16 :goto_7

    .line 135
    .restart local v18       #simState:I
    .restart local v19       #simStatus:Ljava/lang/String;
    :pswitch_0
    const-string v19, "no_sim"

    .line 136
    goto/16 :goto_8

    .line 138
    :pswitch_1
    const-string v19, "sim_carrier_locked"

    .line 139
    goto/16 :goto_8

    .line 141
    :pswitch_2
    const-string v19, "sim_user_locked"

    .line 142
    goto/16 :goto_8

    .line 144
    :pswitch_3
    const-string v19, "sim_puk_locked"

    .line 145
    goto/16 :goto_8

    .line 147
    :pswitch_4
    const-string v19, "sim_ok"

    .line 148
    goto/16 :goto_8

    .line 150
    :pswitch_5
    const-string v19, "sim_unknown"

    goto/16 :goto_8

    .line 154
    :cond_d
    const-string v28, "c"

    goto/16 :goto_9

    .line 166
    .restart local v17       #refStr:Ljava/lang/String;
    .restart local v27       #x:I
    :cond_e
    move/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/http/NameValuePair;

    .line 167
    .local v21, tmp:Lorg/apache/http/NameValuePair;
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v22

    .line 168
    .local v22, val:Ljava/lang/String;
    if-eqz v22, :cond_f

    .line 170
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v17

    .line 164
    :cond_f
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a

    .line 178
    .end local v3           #cal:Ljava/util/Calendar;
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v5           #deviceId:Ljava/lang/String;
    .end local v12           #mobile:Landroid/net/NetworkInfo$State;
    .end local v13           #mobileNet:Landroid/net/NetworkInfo;
    .end local v15           #networkState:Ljava/lang/String;
    .end local v16           #ref17:Ljava/lang/String;
    .end local v17           #refStr:Ljava/lang/String;
    .end local v18           #simState:I
    .end local v19           #simStatus:Ljava/lang/String;
    .end local v21           #tmp:Lorg/apache/http/NameValuePair;
    .end local v22           #val:Ljava/lang/String;
    .end local v23           #wifi:Landroid/net/NetworkInfo$State;
    .end local v26           #wifiNet:Landroid/net/NetworkInfo;
    .end local v27           #x:I
    :catch_1
    move-exception v6

    .line 180
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v28, "LBAdConroller"

    move-object/from16 v0, v28

    invoke-static {v0, v6}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 182
    const-string v28, ""

    goto/16 :goto_b

    .line 101
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #cal:Ljava/util/Calendar;
    .restart local v5       #deviceId:Ljava/lang/String;
    :catch_2
    move-exception v28

    goto/16 :goto_3

    .line 88
    :catch_3
    move-exception v28

    goto/16 :goto_2

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static getLocalIpAddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 189
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 205
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 191
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 192
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 195
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 197
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 202
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 203
    .local v2, ex:Ljava/net/SocketException;
    const-string v5, "LBAdConroller"

    invoke-static {v5, v2}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
