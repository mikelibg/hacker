.class Lcom/airpush/android/FormatAds;
.super Ljava/lang/Object;
.source "FormatAds.java"

# interfaces
.implements Lcom/airpush/android/IConstants;


# instance fields
.field private adType:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private nextMessageCheckValue:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airpush/android/FormatAds;->context:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private getAds(Lorg/json/JSONObject;)V
    .locals 21
    .parameter "json"

    .prologue
    .line 73
    :try_start_0
    const-string v17, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v15, "New Message"

    .line 74
    .local v15, title:Ljava/lang/String;
    :goto_0
    const-string v17, "text"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string v14, "Click here for details!"

    .line 75
    .local v14, text:Ljava/lang/String;
    :goto_1
    const-string v17, "creativeid"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v4, ""

    .line 76
    .local v4, creativeid:Ljava/lang/String;
    :goto_2
    const-string v17, "campaignid"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v3, ""

    .line 78
    .local v3, campaignid:Ljava/lang/String;
    :goto_3
    invoke-static {v15}, Lcom/airpush/android/Util;->setNotification_title(Ljava/lang/String;)V

    .line 79
    invoke-static {v14}, Lcom/airpush/android/Util;->setNotification_text(Ljava/lang/String;)V

    .line 80
    invoke-static {v3}, Lcom/airpush/android/Util;->setCampId(Ljava/lang/String;)V

    .line 81
    invoke-static {v4}, Lcom/airpush/android/Util;->setCreativeId(Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->adType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "W"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->adType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "BPW"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 83
    :cond_0
    const-string v17, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-string v16, "nothing"

    .line 84
    .local v16, url:Ljava/lang/String;
    :goto_4
    const-string v17, "header"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string v9, "Advertisment"

    .line 85
    .local v9, header:Ljava/lang/String;
    :goto_5
    invoke-static/range {v16 .. v16}, Lcom/airpush/android/Util;->setNotificationUrl(Ljava/lang/String;)V

    .line 86
    invoke-static {v9}, Lcom/airpush/android/Util;->setHeader(Ljava/lang/String;)V

    .line 103
    .end local v9           #header:Ljava/lang/String;
    .end local v16           #url:Ljava/lang/String;
    :cond_1
    :goto_6
    const-string v17, "delivery_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    const-string v5, "0"

    .line 104
    .local v5, delivery_time:Ljava/lang/String;
    :goto_7
    const-string v17, "expirytime"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    const-string v17, "86400000"

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    :goto_8
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 105
    .local v7, expirytime:Ljava/lang/Long;
    const-string v17, "adimage"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    const-string v2, "http://beta.airpush.com/images/adsthumbnail/48.png"

    .line 106
    .local v2, adimageurl:Ljava/lang/String;
    :goto_9
    const-string v17, "ip1"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    const-string v10, "invalid"

    .line 107
    .local v10, ip1:Ljava/lang/String;
    :goto_a
    const-string v17, "ip2"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    const-string v11, "invalid"

    .line 108
    .local v11, ip2:Ljava/lang/String;
    :goto_b
    invoke-static {v5}, Lcom/airpush/android/Util;->setDelivery_time(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/airpush/android/Util;->setExpiry_time(J)V

    .line 110
    invoke-static {v2}, Lcom/airpush/android/Util;->setAdImageUrl(Ljava/lang/String;)V

    .line 111
    invoke-static {v10}, Lcom/airpush/android/Util;->setIP1(Ljava/lang/String;)V

    .line 112
    invoke-static {v11}, Lcom/airpush/android/Util;->setIP2(Ljava/lang/String;)V

    .line 113
    new-instance v17, Lcom/airpush/android/SetPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/airpush/android/SetPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v17 .. v17}, Lcom/airpush/android/SetPreferences;->storeIP()Z

    .line 114
    invoke-static {}, Lcom/airpush/android/Util;->getDelivery_time()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {}, Lcom/airpush/android/Util;->getDelivery_time()Ljava/lang/String;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 115
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 117
    .local v8, format0:Ljava/text/SimpleDateFormat;
    const-string v17, "GMT"

    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 118
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 120
    .end local v8           #format0:Ljava/text/SimpleDateFormat;
    :cond_2
    new-instance v17, Lcom/airpush/android/DeliverNotification;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/airpush/android/DeliverNotification;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/FormatAds;->nextMessageCheckValue:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Lcom/airpush/android/SetPreferences;->setSDKStartTime(Landroid/content/Context;J)Z

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/airpush/android/PushNotification;->reStartSDK(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 135
    .end local v2           #adimageurl:Ljava/lang/String;
    .end local v3           #campaignid:Ljava/lang/String;
    .end local v4           #creativeid:Ljava/lang/String;
    .end local v5           #delivery_time:Ljava/lang/String;
    .end local v7           #expirytime:Ljava/lang/Long;
    .end local v10           #ip1:Ljava/lang/String;
    .end local v11           #ip2:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    :goto_c
    return-void

    .line 73
    :cond_3
    :try_start_2
    const-string v17, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 74
    .restart local v15       #title:Ljava/lang/String;
    :cond_4
    const-string v17, "text"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 75
    .restart local v14       #text:Ljava/lang/String;
    :cond_5
    const-string v17, "creativeid"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 76
    .restart local v4       #creativeid:Ljava/lang/String;
    :cond_6
    const-string v17, "campaignid"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 83
    .restart local v3       #campaignid:Ljava/lang/String;
    :cond_7
    const-string v17, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_4

    .line 84
    .restart local v16       #url:Ljava/lang/String;
    :cond_8
    const-string v17, "header"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 87
    .end local v16           #url:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->adType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "A"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->adType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "BPA"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 88
    :cond_a
    const-string v17, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    const-string v16, "nothing"

    .line 89
    .restart local v16       #url:Ljava/lang/String;
    :goto_d
    const-string v17, "header"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v9, "Advertisment"

    .line 90
    .restart local v9       #header:Ljava/lang/String;
    :goto_e
    invoke-static/range {v16 .. v16}, Lcom/airpush/android/Util;->setNotificationUrl(Ljava/lang/String;)V

    .line 91
    invoke-static {v9}, Lcom/airpush/android/Util;->setHeader(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 122
    .end local v3           #campaignid:Ljava/lang/String;
    .end local v4           #creativeid:Ljava/lang/String;
    .end local v9           #header:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #url:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 123
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Push parsing error: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    .line 125
    const-string v17, "Push Message Parsing.....Failed "

    invoke-static/range {v17 .. v17}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/FormatAds;->nextMessageCheckValue:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Lcom/airpush/android/SetPreferences;->setSDKStartTime(Landroid/content/Context;J)Z

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/airpush/android/PushNotification;->reStartSDK(Landroid/content/Context;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_c

    .line 131
    :catch_1
    move-exception v6

    .line 132
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 88
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #campaignid:Ljava/lang/String;
    .restart local v4       #creativeid:Ljava/lang/String;
    .restart local v14       #text:Ljava/lang/String;
    .restart local v15       #title:Ljava/lang/String;
    :cond_b
    :try_start_5
    const-string v17, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_d

    .line 89
    .restart local v16       #url:Ljava/lang/String;
    :cond_c
    const-string v17, "header"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    .line 93
    .end local v16           #url:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->adType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "CM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->adType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "BPCM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 94
    :cond_e
    const-string v17, "number"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    const-string v12, "0"

    .line 95
    .local v12, number:Ljava/lang/String;
    :goto_f
    const-string v17, "sms"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    const-string v13, ""

    .line 96
    .local v13, sms:Ljava/lang/String;
    :goto_10
    invoke-static {v12}, Lcom/airpush/android/Util;->setPhoneNumber(Ljava/lang/String;)V

    .line 97
    invoke-static {v13}, Lcom/airpush/android/Util;->setSms(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_6

    .line 126
    .end local v3           #campaignid:Ljava/lang/String;
    .end local v4           #creativeid:Ljava/lang/String;
    .end local v12           #number:Ljava/lang/String;
    .end local v13           #sms:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    :catchall_0
    move-exception v17

    .line 128
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/FormatAds;->nextMessageCheckValue:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Lcom/airpush/android/SetPreferences;->setSDKStartTime(Landroid/content/Context;J)Z

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/airpush/android/PushNotification;->reStartSDK(Landroid/content/Context;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 134
    :goto_11
    throw v17

    .line 94
    .restart local v3       #campaignid:Ljava/lang/String;
    .restart local v4       #creativeid:Ljava/lang/String;
    .restart local v14       #text:Ljava/lang/String;
    .restart local v15       #title:Ljava/lang/String;
    :cond_f
    :try_start_7
    const-string v17, "number"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_f

    .line 95
    .restart local v12       #number:Ljava/lang/String;
    :cond_10
    const-string v17, "sms"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_10

    .line 98
    .end local v12           #number:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->adType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "CC"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/FormatAds;->adType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "BPCC"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 99
    :cond_12
    const-string v17, "number"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v12, "0"

    .line 100
    .restart local v12       #number:Ljava/lang/String;
    :goto_12
    invoke-static {v12}, Lcom/airpush/android/Util;->setPhoneNumber(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 99
    .end local v12           #number:Ljava/lang/String;
    :cond_13
    const-string v17, "number"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_12

    .line 103
    :cond_14
    const-string v17, "delivery_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 104
    .restart local v5       #delivery_time:Ljava/lang/String;
    :cond_15
    const-string v17, "expirytime"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    goto/16 :goto_8

    .line 105
    .restart local v7       #expirytime:Ljava/lang/Long;
    :cond_16
    const-string v17, "adimage"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_9

    .line 106
    .restart local v2       #adimageurl:Ljava/lang/String;
    :cond_17
    const-string v17, "ip1"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_a

    .line 107
    .restart local v10       #ip1:Ljava/lang/String;
    :cond_18
    const-string v17, "ip2"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v11

    goto/16 :goto_b

    .line 131
    .end local v2           #adimageurl:Ljava/lang/String;
    .end local v3           #campaignid:Ljava/lang/String;
    .end local v4           #creativeid:Ljava/lang/String;
    .end local v5           #delivery_time:Ljava/lang/String;
    .end local v7           #expirytime:Ljava/lang/Long;
    .end local v10           #ip1:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 132
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    .line 131
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #adimageurl:Ljava/lang/String;
    .restart local v3       #campaignid:Ljava/lang/String;
    .restart local v4       #creativeid:Ljava/lang/String;
    .restart local v5       #delivery_time:Ljava/lang/String;
    .restart local v7       #expirytime:Ljava/lang/Long;
    .restart local v10       #ip1:Ljava/lang/String;
    .restart local v11       #ip2:Ljava/lang/String;
    .restart local v14       #text:Ljava/lang/String;
    .restart local v15       #title:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 132
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c
.end method

.method private getNextMessageCheckTime(Lorg/json/JSONObject;)J
    .locals 6
    .parameter "json"

    .prologue
    const-wide/16 v4, 0x3e8

    .line 56
    const-string v2, "300"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 59
    .local v1, nextMsgCheckTime:Ljava/lang/Long;
    :try_start_0
    const-string v2, "nextmessagecheck"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const-wide/32 v2, 0xdbba00

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized parseJson(Ljava/lang/String;)V
    .locals 7
    .parameter "jsonString"

    .prologue
    .line 24
    monitor-enter p0

    const-wide/32 v4, 0xdbba00

    :try_start_0
    iput-wide v4, p0, Lcom/airpush/android/FormatAds;->nextMessageCheckValue:J

    .line 26
    const/4 v2, 0x0

    .line 27
    .local v2, json:Lorg/json/JSONObject;
    const-string v4, "nextmessagecheck"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    .end local v2           #json:Lorg/json/JSONObject;
    .local v3, json:Lorg/json/JSONObject;
    :try_start_2
    invoke-direct {p0, v3}, Lcom/airpush/android/FormatAds;->getNextMessageCheckTime(Lorg/json/JSONObject;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/airpush/android/FormatAds;->nextMessageCheckValue:J

    .line 31
    const-string v4, "adtype"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "invalid"

    :goto_0
    iput-object v4, p0, Lcom/airpush/android/FormatAds;->adType:Ljava/lang/String;

    .line 32
    iget-object v4, p0, Lcom/airpush/android/FormatAds;->adType:Ljava/lang/String;

    const-string v5, "invalid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 33
    iget-object v4, p0, Lcom/airpush/android/FormatAds;->adType:Ljava/lang/String;

    invoke-static {v4}, Lcom/airpush/android/Util;->setAdType(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, v3}, Lcom/airpush/android/FormatAds;->getAds(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 52
    .end local v3           #json:Lorg/json/JSONObject;
    .restart local v2       #json:Lorg/json/JSONObject;
    :goto_1
    monitor-exit p0

    return-void

    .line 31
    .end local v2           #json:Lorg/json/JSONObject;
    .restart local v3       #json:Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    const-string v4, "adtype"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 36
    :cond_1
    iget-object v4, p0, Lcom/airpush/android/FormatAds;->context:Landroid/content/Context;

    iget-wide v5, p0, Lcom/airpush/android/FormatAds;->nextMessageCheckValue:J

    invoke-static {v4, v5, v6}, Lcom/airpush/android/SetPreferences;->setSDKStartTime(Landroid/content/Context;J)Z

    .line 37
    iget-object v4, p0, Lcom/airpush/android/FormatAds;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/airpush/android/PushNotification;->reStartSDK(Landroid/content/Context;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v3

    .end local v3           #json:Lorg/json/JSONObject;
    .restart local v2       #json:Lorg/json/JSONObject;
    goto :goto_1

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, je:Lorg/json/JSONException;
    :goto_2
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in push JSON: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Message Parsing.....Failed : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 24
    .end local v1           #je:Lorg/json/JSONException;
    .end local v2           #json:Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 44
    .restart local v2       #json:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Epush parse: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto :goto_1

    .line 50
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v4, "nextmessagecheck is not present in json"

    invoke-static {v4}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 44
    .end local v2           #json:Lorg/json/JSONObject;
    .restart local v3       #json:Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #json:Lorg/json/JSONObject;
    .restart local v2       #json:Lorg/json/JSONObject;
    goto :goto_3

    .line 39
    .end local v2           #json:Lorg/json/JSONObject;
    .restart local v3       #json:Lorg/json/JSONObject;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #json:Lorg/json/JSONObject;
    .restart local v2       #json:Lorg/json/JSONObject;
    goto :goto_2
.end method
