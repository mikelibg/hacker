.class public Lcom/pad/android/iappad/controller/AdUtilityController;
.super Lcom/pad/android/iappad/AdController;
.source "AdUtilityController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdUtilityController"


# instance fields
.field private mAssetController:Lcom/pad/android/iappad/controller/AdAssetController;

.field private mDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

.field private mLocationController:Lcom/pad/android/iappad/controller/AdLocationController;

.field private mNetworkController:Lcom/pad/android/iappad/controller/AdNetworkController;

.field private mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;


# direct methods
.method public constructor <init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V
    .locals 2
    .parameter "adView"
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/pad/android/iappad/AdController;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    .line 58
    new-instance v0, Lcom/pad/android/iappad/controller/AdAssetController;

    invoke-direct {v0, p1, p2}, Lcom/pad/android/iappad/controller/AdAssetController;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mAssetController:Lcom/pad/android/iappad/controller/AdAssetController;

    .line 59
    new-instance v0, Lcom/pad/android/iappad/controller/AdDisplayController;

    invoke-direct {v0, p1, p2}, Lcom/pad/android/iappad/controller/AdDisplayController;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    .line 60
    new-instance v0, Lcom/pad/android/iappad/controller/AdLocationController;

    invoke-direct {v0, p1, p2}, Lcom/pad/android/iappad/controller/AdLocationController;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mLocationController:Lcom/pad/android/iappad/controller/AdLocationController;

    .line 61
    new-instance v0, Lcom/pad/android/iappad/controller/AdNetworkController;

    invoke-direct {v0, p1, p2}, Lcom/pad/android/iappad/controller/AdNetworkController;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mNetworkController:Lcom/pad/android/iappad/controller/AdNetworkController;

    .line 62
    new-instance v0, Lcom/pad/android/iappad/controller/AdSensorController;

    invoke-direct {v0, p1, p2}, Lcom/pad/android/iappad/controller/AdSensorController;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

    .line 64
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mAssetController:Lcom/pad/android/iappad/controller/AdAssetController;

    const-string v1, "ORMMAAssetsControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/pad/android/richmedia/view/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    const-string v1, "ORMMADisplayControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/pad/android/richmedia/view/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mLocationController:Lcom/pad/android/iappad/controller/AdLocationController;

    const-string v1, "ORMMALocationControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/pad/android/richmedia/view/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mNetworkController:Lcom/pad/android/iappad/controller/AdNetworkController;

    const-string v1, "ORMMANetworkControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/pad/android/richmedia/view/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

    const-string v1, "ORMMASensorControllerBridge"

    invoke-virtual {p1, v0, v1}, Lcom/pad/android/richmedia/view/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/pad/android/iappad/controller/AdUtilityController;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pad/android/iappad/controller/AdUtilityController;->addCalendarEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addCalendarEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "callId"
    .parameter "date"
    .parameter "title"
    .parameter "body"

    .prologue
    .line 285
    iget-object v11, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 286
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 287
    .local v5, dtStart:J
    const-wide/32 v11, 0x36ee80

    add-long v3, v5, v11

    .line 288
    .local v3, dtEnd:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 289
    .local v2, cv:Landroid/content/ContentValues;
    const-string v11, "calendar_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    const-string v11, "title"

    move-object/from16 v0, p3

    invoke-virtual {v2, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v11, "description"

    move-object/from16 v0, p4

    invoke-virtual {v2, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v11, "dtstart"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 293
    const-string v11, "hasAlarm"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v11, "dtend"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 297
    sget-object v11, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1

    .line 298
    const-string v11, "content://com.android.calendar/events"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v1, v11, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 302
    .local v9, newEvent:Landroid/net/Uri;
    :goto_0
    if-eqz v9, :cond_0

    .line 303
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 304
    .local v7, id:J
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "event_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    const-string v11, "method"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string v11, "minutes"

    const/16 v12, 0xf

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    sget-object v11, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_2

    .line 309
    const-string v11, "content://com.android.calendar/reminders"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v1, v11, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 314
    .end local v7           #id:J
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    const-string v12, "Event added to calendar"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 315
    return-void

    .line 300
    .end local v9           #newEvent:Landroid/net/Uri;
    :cond_1
    const-string v11, "content://calendar/events"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v1, v11, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .restart local v9       #newEvent:Landroid/net/Uri;
    goto :goto_0

    .line 311
    .restart local v7       #id:J
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_2
    const-string v11, "content://calendar/reminders"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v1, v11, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const/4 v1, 0x0

    .line 188
    :goto_0
    return-object v1

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSupports()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    const-string v1, "supports: [ \'level-1\', \'level-2\', \'screen\', \'orientation\', \'network\'"

    .line 100
    .local v1, supports:Ljava/lang/String;
    iget-object v4, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mLocationController:Lcom/pad/android/iappad/controller/AdLocationController;

    invoke-virtual {v4}, Lcom/pad/android/iappad/controller/AdLocationController;->allowLocationServices()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 101
    iget-object v4, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    iget-object v4, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    :cond_0
    move v0, v2

    .line 103
    .local v0, p:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", \'location\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_1
    iget-object v4, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    const-string v5, "android.permission.SEND_SMS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    move v0, v2

    .line 107
    :goto_1
    if-eqz v0, :cond_2

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", \'sms\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_2
    iget-object v4, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    const-string v5, "android.permission.CALL_PHONE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    move v0, v2

    .line 111
    :goto_2
    if-eqz v0, :cond_3

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", \'phone\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_3
    iget-object v4, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    const-string v5, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    .line 115
    const-string v5, "android.permission.READ_CALENDAR"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    move v0, v2

    .line 116
    :goto_3
    if-eqz v0, :cond_4

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", \'calendar\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", \'video\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", \'audio\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", \'map\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", \'email\' ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v2, "AdUtilityController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSupports: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v1

    .end local v0           #p:Z
    :cond_5
    move v0, v3

    .line 102
    goto/16 :goto_0

    .restart local v0       #p:Z
    :cond_6
    move v0, v3

    .line 106
    goto/16 :goto_1

    :cond_7
    move v0, v3

    .line 110
    goto/16 :goto_2

    :cond_8
    move v0, v3

    .line 115
    goto :goto_3
.end method


# virtual methods
.method public activate(Ljava/lang/String;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 368
    const-string v0, "AdUtilityController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v0, "networkChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mNetworkController:Lcom/pad/android/iappad/controller/AdNetworkController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdNetworkController;->startNetworkListener()V

    .line 383
    :cond_0
    :goto_0
    const-string v0, "ready"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mView:Lcom/pad/android/richmedia/view/AdView;

    const-string v1, "broadcastEvent(\"ready\");"

    invoke-virtual {v0, v1}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 387
    :cond_1
    return-void

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mLocationController:Lcom/pad/android/iappad/controller/AdLocationController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdLocationController;->allowLocationServices()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "locationChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mLocationController:Lcom/pad/android/iappad/controller/AdLocationController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdLocationController;->startLocationListener()V

    goto :goto_0

    .line 373
    :cond_3
    const-string v0, "shake"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdSensorController;->startShakeListener()V

    goto :goto_0

    .line 375
    :cond_4
    const-string v0, "tiltChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdSensorController;->startTiltListener()V

    goto :goto_0

    .line 377
    :cond_5
    const-string v0, "headingChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 378
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdSensorController;->startHeadingListener()V

    goto :goto_0

    .line 379
    :cond_6
    const-string v0, "orientationChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdDisplayController;->startConfigurationListener()V

    goto :goto_0
.end method

.method public copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "alias"
    .parameter "source"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mAssetController:Lcom/pad/android/iappad/controller/AdAssetController;

    invoke-virtual {v0, p1, p2}, Lcom/pad/android/iappad/controller/AdAssetController;->copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .parameter "date"
    .parameter "title"
    .parameter "body"

    .prologue
    .line 217
    const-string v5, "AdUtilityController"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "createEvent: date: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " title: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " body: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 220
    .local v4, cr:Landroid/content/ContentResolver;
    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v5

    const/4 v5, 0x1

    const-string v8, "displayName"

    aput-object v8, v6, v5

    const/4 v5, 0x2

    const-string v8, "_sync_account"

    aput-object v8, v6, v5

    .line 222
    .local v6, cols:[Ljava/lang/String;
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v8, 0x8

    if-ne v5, v8, :cond_2

    .line 223
    const-string v5, "content://com.android.calendar/calendars"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 224
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 223
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 229
    .local v17, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v17, :cond_0

    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_3

    .line 231
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    const-string v8, "No calendar account found"

    const/4 v10, 0x1

    invoke-static {v5, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 232
    if-eqz v17, :cond_1

    .line 233
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_1
    :goto_1
    return-void

    .line 226
    .end local v17           #cursor:Landroid/database/Cursor;
    :cond_2
    const-string v5, "content://calendar/calendars"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 227
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 226
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .restart local v17       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 237
    :cond_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    .line 238
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/pad/android/iappad/controller/AdUtilityController;->addCalendarEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 241
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v9, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v19, 0x0

    .local v19, i:I
    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    move/from16 v0, v19

    if-lt v0, v5, :cond_5

    .line 252
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    .local v16, builder:Landroid/app/AlertDialog$Builder;
    const-string v5, "Choose Calendar to save event to"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 254
    new-instance v7, Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    .line 256
    const v10, 0x109000d

    .line 257
    const/4 v5, 0x2

    new-array v11, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "NAME"

    aput-object v12, v11, v5

    const/4 v5, 0x1

    const-string v12, "EMAILID"

    aput-object v12, v11, v5

    .line 258
    const/4 v5, 0x2

    new-array v12, v5, [I

    fill-array-data v12, :array_0

    .line 254
    invoke-direct/range {v7 .. v12}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 261
    .local v7, adapter:Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    new-instance v10, Lcom/pad/android/iappad/controller/AdUtilityController$1;

    move-object/from16 v11, p0

    move-object v12, v9

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v10 .. v15}, Lcom/pad/android/iappad/controller/AdUtilityController$1;-><init>(Lcom/pad/android/iappad/controller/AdUtilityController;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v5, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 244
    .end local v7           #adapter:Landroid/widget/ListAdapter;
    .end local v16           #builder:Landroid/app/AlertDialog$Builder;
    :cond_5
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v18, entry:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "ID"

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v5, "NAME"

    const/4 v8, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v5, "EMAILID"

    const/4 v8, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 243
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 258
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public deactivate(Ljava/lang/String;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 395
    const-string v0, "AdUtilityController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deactivate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v0, "networkChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mNetworkController:Lcom/pad/android/iappad/controller/AdNetworkController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdNetworkController;->stopNetworkListener()V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    const-string v0, "locationChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mLocationController:Lcom/pad/android/iappad/controller/AdLocationController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdLocationController;->stopAllListeners()V

    goto :goto_0

    .line 400
    :cond_2
    const-string v0, "shake"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdSensorController;->stopShakeListener()V

    goto :goto_0

    .line 402
    :cond_3
    const-string v0, "tiltChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 403
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdSensorController;->stopTiltListener()V

    goto :goto_0

    .line 404
    :cond_4
    const-string v0, "headingChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 405
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdSensorController;->stopHeadingListener()V

    goto :goto_0

    .line 406
    :cond_5
    const-string v0, "orientationChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdDisplayController;->stopConfigurationListener()V

    goto :goto_0
.end method

.method public deleteOldAds()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mAssetController:Lcom/pad/android/iappad/controller/AdAssetController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdAssetController;->deleteOldAds()V

    .line 418
    return-void
.end method

.method public init(F)V
    .locals 4
    .parameter "density"

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.ormmaview.fireChangeEvent({ state: \'default\', network: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mNetworkController:Lcom/pad/android/iappad/controller/AdNetworkController;

    invoke-virtual {v2}, Lcom/pad/android/iappad/controller/AdNetworkController;->getNetwork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    invoke-virtual {v2}, Lcom/pad/android/iappad/controller/AdDisplayController;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    const-string v2, " maxSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    invoke-virtual {v2}, Lcom/pad/android/iappad/controller/AdDisplayController;->getMaxSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    invoke-virtual {v2}, Lcom/pad/android/iappad/controller/AdDisplayController;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " defaultPosition: { x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v2}, Lcom/pad/android/richmedia/view/AdView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v2}, Lcom/pad/android/richmedia/view/AdView;->getTop()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v2}, Lcom/pad/android/richmedia/view/AdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v2}, Lcom/pad/android/richmedia/view/AdView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " },"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    invoke-virtual {v2}, Lcom/pad/android/iappad/controller/AdDisplayController;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/pad/android/iappad/controller/AdUtilityController;->getSupports()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " });"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, injection:Ljava/lang/String;
    const-string v1, "AdUtilityController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init: injection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v1, v0}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/pad/android/iappad/controller/AdUtilityController;->ready()V

    .line 90
    return-void
.end method

.method public makeCall(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 197
    const-string v2, "AdUtilityController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "makeCall: number: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0, p1}, Lcom/pad/android/iappad/controller/AdUtilityController;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 200
    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mView:Lcom/pad/android/richmedia/view/AdView;

    const-string v3, "Bad Phone Number"

    const-string v4, "makeCall"

    invoke-virtual {v2, v3, v4}, Lcom/pad/android/richmedia/view/AdView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public ready()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mView:Lcom/pad/android/richmedia/view/AdView;

    const-string v1, "broadcastEvent(EVENTS.READY, \'ready\');"

    invoke-virtual {v0, v1}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 138
    const-string v0, "AdUtilityController"

    const-string v1, "ready()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "recipient"
    .parameter "subject"
    .parameter "body"

    .prologue
    .line 165
    const-string v1, "AdUtilityController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMail: recipient: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, i:Landroid/content/Intent;
    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 173
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "recipient"
    .parameter "body"

    .prologue
    .line 148
    const-string v1, "AdUtilityController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendSMS: recipient: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method public setMaxSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    invoke-virtual {v0, p1, p2}, Lcom/pad/android/iappad/controller/AdDisplayController;->setMaxSize(II)V

    .line 337
    return-void
.end method

.method public showAlert(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 437
    const-string v0, "AdUtilityController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mAssetController:Lcom/pad/android/iappad/controller/AdAssetController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdAssetController;->stopAllListeners()V

    .line 427
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdDisplayController;->stopAllListeners()V

    .line 428
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mLocationController:Lcom/pad/android/iappad/controller/AdLocationController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdLocationController;->stopAllListeners()V

    .line 429
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mNetworkController:Lcom/pad/android/iappad/controller/AdNetworkController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdNetworkController;->stopAllListeners()V

    .line 430
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdSensorController;->stopAllListeners()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeHTMLToDiskWrap(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "htmlContent"
    .parameter "currentFile"
    .parameter "storeInHashedDirectory"
    .parameter "injection"
    .parameter "bridgePath"
    .parameter "ormmaPath"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mAssetController:Lcom/pad/android/iappad/controller/AdAssetController;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/pad/android/iappad/controller/AdAssetController;->writeHTMLToDiskWrap(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToDiskWrap(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "is"
    .parameter "currentFile"
    .parameter "storeInHashedDirectory"
    .parameter "injection"
    .parameter "bridgePath"
    .parameter "ormmaPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdUtilityController;->mAssetController:Lcom/pad/android/iappad/controller/AdAssetController;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/pad/android/iappad/controller/AdAssetController;->writeToDiskWrap(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
