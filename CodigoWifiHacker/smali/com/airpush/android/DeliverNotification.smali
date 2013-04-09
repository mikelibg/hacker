.class Lcom/airpush/android/DeliverNotification;
.super Ljava/lang/Object;
.source "DeliverNotification.java"

# interfaces
.implements Lcom/airpush/android/IConstants;


# static fields
.field private static final NOTIFICATION_ID:I = 0x3e7

.field private static bmpIcon:Landroid/graphics/Bitmap;


# instance fields
.field private adType:Ljava/lang/String;

.field asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airpush/android/AsyncTaskCompleteListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private expiry_time:J

.field private notificationManager:Landroid/app/NotificationManager;

.field sendImpressionTask:Lcom/airpush/android/AsyncTaskCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airpush/android/AsyncTaskCompleteListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private send_Task:Ljava/lang/Runnable;

.field private text:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/airpush/android/DeliverNotification$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/DeliverNotification$1;-><init>(Lcom/airpush/android/DeliverNotification;)V

    iput-object v0, p0, Lcom/airpush/android/DeliverNotification;->asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    .line 51
    new-instance v0, Lcom/airpush/android/DeliverNotification$2;

    invoke-direct {v0, p0}, Lcom/airpush/android/DeliverNotification$2;-><init>(Lcom/airpush/android/DeliverNotification;)V

    iput-object v0, p0, Lcom/airpush/android/DeliverNotification;->sendImpressionTask:Lcom/airpush/android/AsyncTaskCompleteListener;

    .line 84
    new-instance v0, Lcom/airpush/android/DeliverNotification$3;

    invoke-direct {v0, p0}, Lcom/airpush/android/DeliverNotification$3;-><init>(Lcom/airpush/android/DeliverNotification;)V

    iput-object v0, p0, Lcom/airpush/android/DeliverNotification;->send_Task:Ljava/lang/Runnable;

    .line 102
    iput-object p1, p0, Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;

    .line 103
    if-nez p1, :cond_0

    .line 104
    invoke-static {}, Lcom/airpush/android/Util;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/airpush/android/DeliverNotification;->selectIcon()I

    move-result v0

    invoke-static {v0}, Lcom/airpush/android/Util;->setIcon(I)V

    .line 106
    invoke-static {}, Lcom/airpush/android/Util;->getAdType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/airpush/android/Util;->getNotification_text()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/DeliverNotification;->text:Ljava/lang/CharSequence;

    .line 108
    invoke-static {}, Lcom/airpush/android/Util;->getNotification_title()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/DeliverNotification;->title:Ljava/lang/CharSequence;

    .line 109
    invoke-static {}, Lcom/airpush/android/Util;->getExpiry_time()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airpush/android/DeliverNotification;->expiry_time:J

    .line 111
    iget-object v0, p0, Lcom/airpush/android/DeliverNotification;->asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    invoke-interface {v0}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V

    .line 112
    return-void
.end method

.method static synthetic access$0(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    sput-object p0, Lcom/airpush/android/DeliverNotification;->bmpIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$1(Lcom/airpush/android/DeliverNotification;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/airpush/android/DeliverNotification;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/airpush/android/DeliverNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/airpush/android/DeliverNotification;->deliverNotification()V

    return-void
.end method

.method static synthetic access$4(Lcom/airpush/android/DeliverNotification;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/airpush/android/DeliverNotification;->values:Ljava/util/List;

    return-void
.end method

.method static synthetic access$5(Lcom/airpush/android/DeliverNotification;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airpush/android/DeliverNotification;->values:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/airpush/android/DeliverNotification;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airpush/android/DeliverNotification;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private deliverNotification()V
    .locals 27

    .prologue
    .line 118
    const/4 v15, 0x0

    .line 119
    .local v15, p:Landroid/content/pm/PackageInfo;
    const/4 v9, 0x0

    .line 120
    .local v9, iconid:I
    const/4 v14, 0x0

    .line 121
    .local v14, ntitle:I
    const/4 v11, 0x0

    .line 122
    .local v11, nicon:I
    const/4 v13, 0x0

    .line 124
    .local v13, ntext:I
    :try_start_0
    const-string v21, "com.android.internal.R$id"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 125
    .local v4, cls:Ljava/lang/Class;
    const-string v21, "title"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    .line 126
    const-string v21, "text"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    .line 127
    const-string v21, "icon"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/airpush/android/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x80

    invoke-virtual/range {v21 .. v23}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 130
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 131
    if-nez v9, :cond_0

    .line 132
    invoke-static {}, Lcom/airpush/android/Util;->getIcon()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 137
    .end local v4           #cls:Ljava/lang/Class;
    :cond_0
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "notification"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/NotificationManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/DeliverNotification;->notificationManager:Landroid/app/NotificationManager;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->text:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 140
    .local v16, text1:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/airpush/android/DeliverNotification;->title:Ljava/lang/CharSequence;

    .line 141
    .local v6, contentTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/DeliverNotification;->text:Ljava/lang/CharSequence;

    .line 142
    .local v5, contentText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 144
    .local v19, when:J
    new-instance v12, Landroid/app/Notification;

    invoke-static {}, Lcom/airpush/android/Util;->getIcon()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v16

    move-wide/from16 v2, v19

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .local v12, notification:Landroid/app/Notification;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "android.permission.VIBRATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_1

    .line 149
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/16 v21, 0x1

    const-wide/16 v22, 0x64

    aput-wide v22, v18, v21

    const/16 v21, 0x2

    const-wide/16 v22, 0xc8

    aput-wide v22, v18, v21

    const/16 v21, 0x3

    const-wide/16 v22, 0x12c

    aput-wide v22, v18, v21

    .line 150
    .local v18, vibrate:[J
    move-object/from16 v0, v18

    iput-object v0, v12, Landroid/app/Notification;->vibrate:[J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 157
    .end local v18           #vibrate:[J
    :cond_1
    :goto_1
    const/high16 v21, -0x1

    :try_start_3
    move/from16 v0, v21

    iput v0, v12, Landroid/app/Notification;->ledARGB:I

    .line 158
    const/16 v21, 0x12c

    move/from16 v0, v21

    iput v0, v12, Landroid/app/Notification;->ledOffMS:I

    .line 159
    const/16 v21, 0x12c

    move/from16 v0, v21

    iput v0, v12, Landroid/app/Notification;->ledOnMS:I

    .line 161
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-class v22, Lcom/airpush/android/PushService;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v17, toLaunch:Landroid/content/Intent;
    const-string v21, "PostAdValues"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    new-instance v21, Lcom/airpush/android/SetPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/airpush/android/SetPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v21 .. v21}, Lcom/airpush/android/SetPreferences;->setNotificationData()Z

    .line 166
    const-string v21, "appId"

    invoke-static {}, Lcom/airpush/android/Util;->getAppID()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v21, "APIKEY"

    invoke-static {}, Lcom/airpush/android/Util;->getApiKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v21, "adtype"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "W"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "A"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 171
    :cond_2
    const-string v21, "url"

    invoke-static {}, Lcom/airpush/android/Util;->getNotificationUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v21, "header"

    invoke-static {}, Lcom/airpush/android/Util;->getHeader()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    :cond_3
    :goto_2
    const-string v21, "campId"

    invoke-static {}, Lcom/airpush/android/Util;->getCampId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v21, "creativeId"

    invoke-static {}, Lcom/airpush/android/Util;->getCreativeId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v21, "tray"

    const-string v22, "TrayClicked"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v21, "testMode"

    invoke-static {}, Lcom/airpush/android/Util;->isTestmode()Z

    move-result v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x1000

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 186
    .local v10, intentBack:Landroid/app/PendingIntent;
    iget v0, v12, Landroid/app/Notification;->defaults:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x4

    move/from16 v0, v21

    iput v0, v12, Landroid/app/Notification;->defaults:I

    .line 187
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0, v6, v5, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 190
    sget-object v21, Lcom/airpush/android/DeliverNotification;->bmpIcon:Landroid/graphics/Bitmap;

    if-eqz v21, :cond_6

    .line 191
    iget-object v0, v12, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v21, v0

    sget-object v22, Lcom/airpush/android/DeliverNotification;->bmpIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 195
    :goto_3
    iget-object v0, v12, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 196
    iget-object v0, v12, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "\t "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 198
    iput-object v10, v12, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v21, v0

    const/16 v22, 0x3e7

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 200
    const-string v21, "AirpushSDK"

    const-string v22, "Notification Delivered."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->sendImpressionTask:Lcom/airpush/android/AsyncTaskCompleteListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 213
    :try_start_4
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 214
    .local v8, handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->send_Task:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/DeliverNotification;->expiry_time:J

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 220
    .end local v5           #contentText:Ljava/lang/CharSequence;
    .end local v6           #contentTitle:Ljava/lang/CharSequence;
    .end local v8           #handler:Landroid/os/Handler;
    .end local v10           #intentBack:Landroid/app/PendingIntent;
    .end local v12           #notification:Landroid/app/Notification;
    .end local v16           #text1:Ljava/lang/CharSequence;
    .end local v17           #toLaunch:Landroid/content/Intent;
    .end local v19           #when:J
    :goto_4
    return-void

    .line 134
    :catch_0
    move-exception v7

    .line 135
    .local v7, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 204
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 207
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v21, "AirpushSDK"

    const-string v22, "EMessage Delivered"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 213
    :try_start_7
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 214
    .restart local v8       #handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->send_Task:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/DeliverNotification;->expiry_time:J

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 216
    .end local v8           #handler:Landroid/os/Handler;
    :catch_2
    move-exception v21

    goto :goto_4

    .line 153
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v5       #contentText:Ljava/lang/CharSequence;
    .restart local v6       #contentTitle:Ljava/lang/CharSequence;
    .restart local v12       #notification:Landroid/app/Notification;
    .restart local v16       #text1:Ljava/lang/CharSequence;
    .restart local v19       #when:J
    :catch_3
    move-exception v7

    .line 155
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 210
    .end local v5           #contentText:Ljava/lang/CharSequence;
    .end local v6           #contentTitle:Ljava/lang/CharSequence;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v12           #notification:Landroid/app/Notification;
    .end local v16           #text1:Ljava/lang/CharSequence;
    .end local v19           #when:J
    :catchall_0
    move-exception v21

    .line 213
    :try_start_9
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 214
    .restart local v8       #handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->send_Task:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/DeliverNotification;->expiry_time:J

    move-wide/from16 v25, v0

    mul-long v23, v23, v25

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 219
    .end local v8           #handler:Landroid/os/Handler;
    :goto_5
    throw v21

    .line 173
    .restart local v5       #contentText:Ljava/lang/CharSequence;
    .restart local v6       #contentTitle:Ljava/lang/CharSequence;
    .restart local v12       #notification:Landroid/app/Notification;
    .restart local v16       #text1:Ljava/lang/CharSequence;
    .restart local v17       #toLaunch:Landroid/content/Intent;
    .restart local v19       #when:J
    :cond_4
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "CM"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 174
    const-string v21, "sms"

    invoke-static {}, Lcom/airpush/android/Util;->getSms()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v21, "number"

    invoke-static {}, Lcom/airpush/android/Util;->getPhoneNumber()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 176
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "CC"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 177
    const-string v21, "number"

    invoke-static {}, Lcom/airpush/android/Util;->getPhoneNumber()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 193
    .restart local v10       #intentBack:Landroid/app/PendingIntent;
    :cond_6
    iget-object v0, v12, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v21, v0

    invoke-static {}, Lcom/airpush/android/Util;->getIcon()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    .line 216
    :catch_4
    move-exception v21

    goto/16 :goto_4

    .end local v5           #contentText:Ljava/lang/CharSequence;
    .end local v6           #contentTitle:Ljava/lang/CharSequence;
    .end local v10           #intentBack:Landroid/app/PendingIntent;
    .end local v12           #notification:Landroid/app/Notification;
    .end local v16           #text1:Ljava/lang/CharSequence;
    .end local v17           #toLaunch:Landroid/content/Intent;
    .end local v19           #when:J
    :catch_5
    move-exception v22

    goto :goto_5
.end method

.method private selectIcon()I
    .locals 5

    .prologue
    .line 224
    const v0, 0x1080074

    .line 225
    .local v0, icon:I
    sget-object v1, Lcom/airpush/android/DeliverNotification;->ICONS_ARRAY:[I

    .line 226
    .local v1, icons:[I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 227
    .local v3, rand:Ljava/util/Random;
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 228
    .local v2, num:I
    aget v0, v1, v2

    .line 229
    return v0
.end method


# virtual methods
.method notifyUsers(Landroid/content/Context;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 234
    const-string v18, "Push 2.0"

    invoke-static/range {v18 .. v18}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 236
    :try_start_0
    new-instance v17, Landroid/content/Intent;

    const-class v18, Lcom/airpush/android/PushService;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v17, toLaunch:Landroid/content/Intent;
    const-string v18, "PostAdValues"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    new-instance v18, Lcom/airpush/android/SetPreferences;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/airpush/android/SetPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v18 .. v18}, Lcom/airpush/android/SetPreferences;->setNotificationData()Z

    .line 241
    const-string v18, "appId"

    invoke-static {}, Lcom/airpush/android/Util;->getAppID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v18, "APIKEY"

    invoke-static {}, Lcom/airpush/android/Util;->getApiKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v18, "adtype"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "BPW"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "BPA"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 246
    :cond_0
    const-string v18, "url"

    invoke-static {}, Lcom/airpush/android/Util;->getNotificationUrl()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v18, "header"

    invoke-static {}, Lcom/airpush/android/Util;->getHeader()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :cond_1
    :goto_0
    const-string v18, "campId"

    invoke-static {}, Lcom/airpush/android/Util;->getCampId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v18, "creativeId"

    invoke-static {}, Lcom/airpush/android/Util;->getCreativeId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v18, "tray"

    const-string v19, "TrayClicked"

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v18, "testMode"

    invoke-static {}, Lcom/airpush/android/Util;->isTestmode()Z

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 261
    .local v16, pendingIntent:Landroid/app/PendingIntent;
    const/4 v13, 0x0

    .line 262
    .local v13, nicon:I
    const/4 v10, 0x0

    .line 263
    .local v10, layout:I
    const/4 v11, 0x0

    .line 264
    .local v11, nText:I
    const/4 v12, 0x0

    .line 265
    .local v12, nTitle:I
    const/4 v9, 0x0

    .line 267
    .local v9, ic:I
    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".R$id"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 268
    .local v4, cls:Ljava/lang/Class;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".R$layout"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 269
    .local v5, cls2:Ljava/lang/Class;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".R$drawable"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 270
    .local v6, cls3:Ljava/lang/Class;
    const-string v18, "airpush_notify"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    .line 271
    const-string v18, "imageView"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    .line 272
    const-string v18, "textView"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    .line 273
    const-string v18, "push_icon"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    .line 275
    const-string v18, "Delivering Push 2.0"

    invoke-static/range {v18 .. v18}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 291
    .end local v4           #cls:Ljava/lang/Class;
    .end local v5           #cls2:Ljava/lang/Class;
    .end local v6           #cls3:Ljava/lang/Class;
    :goto_1
    :try_start_2
    new-instance v14, Landroid/app/Notification;

    invoke-direct {v14}, Landroid/app/Notification;-><init>()V

    .line 293
    .local v14, notification:Landroid/app/Notification;
    const/16 v18, 0x10

    move/from16 v0, v18

    iput v0, v14, Landroid/app/Notification;->flags:I

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->text:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v14, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 296
    if-eqz v10, :cond_4

    if-eqz v9, :cond_4

    .line 297
    iput v9, v14, Landroid/app/Notification;->icon:I

    .line 298
    new-instance v18, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v18

    iput-object v0, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 300
    iget-object v0, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v18, v0

    sget-object v19, Lcom/airpush/android/DeliverNotification;->bmpIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 307
    :goto_2
    iget-object v0, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->text:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 309
    move-object/from16 v0, v16

    iput-object v0, v14, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 310
    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v14, Landroid/app/Notification;->defaults:I

    .line 312
    const-string v18, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    .line 314
    .local v15, notificationManager:Landroid/app/NotificationManager;
    const/16 v18, 0x3e7

    move/from16 v0, v18

    invoke-virtual {v15, v0, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->sendImpressionTask:Lcom/airpush/android/AsyncTaskCompleteListener;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 327
    :try_start_3
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 328
    .local v8, handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->send_Task:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/DeliverNotification;->expiry_time:J

    move-wide/from16 v21, v0

    mul-long v19, v19, v21

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 334
    .end local v8           #handler:Landroid/os/Handler;
    .end local v9           #ic:I
    .end local v10           #layout:I
    .end local v11           #nText:I
    .end local v12           #nTitle:I
    .end local v13           #nicon:I
    .end local v14           #notification:Landroid/app/Notification;
    .end local v15           #notificationManager:Landroid/app/NotificationManager;
    .end local v16           #pendingIntent:Landroid/app/PendingIntent;
    .end local v17           #toLaunch:Landroid/content/Intent;
    :goto_3
    return-void

    .line 248
    .restart local v17       #toLaunch:Landroid/content/Intent;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "BPCM"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 249
    const-string v18, "sms"

    invoke-static {}, Lcom/airpush/android/Util;->getSms()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v18, "number"

    invoke-static {}, Lcom/airpush/android/Util;->getPhoneNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 318
    .end local v17           #toLaunch:Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 321
    .local v7, e:Ljava/lang/Exception;
    :try_start_5
    const-string v18, "AirpushSDK"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Banner Push Exception : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 327
    :try_start_6
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 328
    .restart local v8       #handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->send_Task:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/DeliverNotification;->expiry_time:J

    move-wide/from16 v21, v0

    mul-long v19, v19, v21

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 330
    .end local v8           #handler:Landroid/os/Handler;
    :catch_1
    move-exception v18

    goto :goto_3

    .line 251
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v17       #toLaunch:Landroid/content/Intent;
    :cond_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "BPCC"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 252
    const-string v18, "number"

    invoke-static {}, Lcom/airpush/android/Util;->getPhoneNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 324
    .end local v17           #toLaunch:Landroid/content/Intent;
    :catchall_0
    move-exception v18

    .line 327
    :try_start_8
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 328
    .restart local v8       #handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->send_Task:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/DeliverNotification;->expiry_time:J

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 333
    .end local v8           #handler:Landroid/os/Handler;
    :goto_4
    throw v18

    .line 276
    .restart local v9       #ic:I
    .restart local v10       #layout:I
    .restart local v11       #nText:I
    .restart local v12       #nTitle:I
    .restart local v13       #nicon:I
    .restart local v16       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v17       #toLaunch:Landroid/content/Intent;
    :catch_2
    move-exception v7

    .line 277
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v18, "AirpushSDK"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Error occured while delivering Banner push. "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v18, "AirpushSDK"

    const-string v19, "Please check you have added airpush_notify.xml to layout folder. An image push_icon.png is also required in drawbale folder."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 280
    :try_start_a
    const-string v18, "com.android.internal.R$id"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 281
    .restart local v4       #cls:Ljava/lang/Class;
    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v12

    .line 282
    const-string v18, "text"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    .line 283
    const-string v18, "icon"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-result v9

    goto/16 :goto_1

    .line 302
    .end local v4           #cls:Ljava/lang/Class;
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v14       #notification:Landroid/app/Notification;
    :cond_4
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/airpush/android/DeliverNotification;->selectIcon()I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Landroid/app/Notification;->icon:I

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->text:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v16

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 304
    iget-object v0, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/airpush/android/Util;->getIcon()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 305
    iget-object v0, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/DeliverNotification;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_2

    .line 330
    .restart local v15       #notificationManager:Landroid/app/NotificationManager;
    :catch_3
    move-exception v18

    goto/16 :goto_3

    .end local v9           #ic:I
    .end local v10           #layout:I
    .end local v11           #nText:I
    .end local v12           #nTitle:I
    .end local v13           #nicon:I
    .end local v14           #notification:Landroid/app/Notification;
    .end local v15           #notificationManager:Landroid/app/NotificationManager;
    .end local v16           #pendingIntent:Landroid/app/PendingIntent;
    .end local v17           #toLaunch:Landroid/content/Intent;
    :catch_4
    move-exception v19

    goto/16 :goto_4

    .line 285
    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v9       #ic:I
    .restart local v10       #layout:I
    .restart local v11       #nText:I
    .restart local v12       #nTitle:I
    .restart local v13       #nicon:I
    .restart local v16       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v17       #toLaunch:Landroid/content/Intent;
    :catch_5
    move-exception v18

    goto/16 :goto_1
.end method
