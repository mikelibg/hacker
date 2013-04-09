.class final Lcom/wifi/hacker/cracker/BootReceiver$18;
.super Lcom/parse/GetCallback;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/BootReceiver;->loadParseAdSettings(Landroid/content/Context;ZLcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$calledFromReloadSettings:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tabViewOnLoadListener:Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$calledFromReloadSettings:Z

    iput-object p3, p0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$tabViewOnLoadListener:Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;

    invoke-direct {p0}, Lcom/parse/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 21
    .parameter "object"
    .parameter "e"

    .prologue
    .line 1039
    if-nez p1, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/wifi/hacker/cracker/BootReceiver;->setParseLoaded(Landroid/content/Context;)V

    .line 1054
    const/4 v13, 0x0

    .line 1055
    .local v13, potentialNotificationSettings:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1058
    .local v14, setting:Ljava/lang/String;
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_PUSH_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1059
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_PUSH_NOTIFICATION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 1064
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1065
    .local v15, settingValue:Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$context:Landroid/content/Context;

    invoke-static {v2, v14, v15}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1076
    .end local v14           #setting:Ljava/lang/String;
    .end local v15           #settingValue:Ljava/lang/String;
    :cond_4
    if-eqz v13, :cond_5

    .line 1079
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1080
    .local v16, settingsObj:Lorg/json/JSONObject;
    if-eqz v16, :cond_5

    .line 1082
    const-string v2, "notification_title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1085
    .local v3, notificationTitle:Ljava/lang/String;
    const-string v2, "description"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1086
    .local v6, notificationDescription:Ljava/lang/String;
    const-string v2, "package"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1087
    .local v5, notificationPackage:Ljava/lang/String;
    const-string v2, "icon_title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1090
    .local v4, iconTitle:Ljava/lang/String;
    const-string v2, "icon_url"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1091
    const-string v2, "icon_url"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1095
    .local v9, iconUrl:Ljava/lang/String;
    :goto_2
    const-string v2, "installation_delay"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 1096
    .local v12, installationDelay:Ljava/lang/Long;
    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    if-eqz v12, :cond_5

    if-eqz v4, :cond_5

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$context:Landroid/content/Context;

    invoke-static {v2, v3, v4, v5}, Lcom/wifi/hacker/cracker/BootReceiver;->shouldMakeNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1102
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$calledFromReloadSettings:Z

    if-eqz v2, :cond_8

    .line 1103
    const-wide/16 v7, 0x0

    .line 1107
    .local v7, delayMillis:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$context:Landroid/content/Context;

    invoke-static/range {v2 .. v9}, Lcom/wifi/hacker/cracker/BootReceiver;->scheduleMakeNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1122
    .end local v3           #notificationTitle:Ljava/lang/String;
    .end local v4           #iconTitle:Ljava/lang/String;
    .end local v5           #notificationPackage:Ljava/lang/String;
    .end local v6           #notificationDescription:Ljava/lang/String;
    .end local v7           #delayMillis:J
    .end local v9           #iconUrl:Ljava/lang/String;
    .end local v12           #installationDelay:Ljava/lang/Long;
    .end local v16           #settingsObj:Lorg/json/JSONObject;
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/wifi/hacker/cracker/BootReceiver;->getUpdateInterval(Landroid/content/Context;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->scheduleNextReloadSettings(Landroid/content/Context;J)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$tabViewOnLoadListener:Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;

    if-eqz v2, :cond_6

    .line 1130
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$tabViewOnLoadListener:Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/wifi/hacker/cracker/BootReceiver;->showTabViewInterstitial(Landroid/app/Activity;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1137
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/wifi/hacker/cracker/BootReceiver$18;->val$calledFromReloadSettings:Z

    if-eqz v2, :cond_0

    .line 1138
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v11

    .line 1139
    .local v11, installation:Lcom/parse/ParseInstallation;
    const-string v2, "updateTime"

    new-instance v17, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Lcom/parse/ParseInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1140
    invoke-virtual {v11}, Lcom/parse/ParseInstallation;->saveEventually()V

    goto/16 :goto_0

    .line 1093
    .end local v11           #installation:Lcom/parse/ParseInstallation;
    .restart local v3       #notificationTitle:Ljava/lang/String;
    .restart local v4       #iconTitle:Ljava/lang/String;
    .restart local v5       #notificationPackage:Ljava/lang/String;
    .restart local v6       #notificationDescription:Ljava/lang/String;
    .restart local v16       #settingsObj:Lorg/json/JSONObject;
    :cond_7
    :try_start_2
    const-string v9, ""

    .restart local v9       #iconUrl:Ljava/lang/String;
    goto :goto_2

    .line 1105
    .restart local v12       #installationDelay:Ljava/lang/Long;
    :cond_8
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v17

    const-wide/32 v19, 0xea60

    mul-long v7, v17, v19

    .restart local v7       #delayMillis:J
    goto :goto_3

    .line 1131
    .end local v3           #notificationTitle:Ljava/lang/String;
    .end local v4           #iconTitle:Ljava/lang/String;
    .end local v5           #notificationPackage:Ljava/lang/String;
    .end local v6           #notificationDescription:Ljava/lang/String;
    .end local v7           #delayMillis:J
    .end local v9           #iconUrl:Ljava/lang/String;
    .end local v12           #installationDelay:Ljava/lang/Long;
    .end local v16           #settingsObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_5

    .line 1115
    :catch_1
    move-exception v2

    goto :goto_4
.end method
