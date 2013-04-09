.class public Lcom/pad/android/xappad/AdController;
.super Ljava/lang/Object;
.source "AdController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pad/android/xappad/AdController$AdIcon;,
        Lcom/pad/android/xappad/AdController$NotificationImg;
    }
.end annotation


# static fields
.field public static final LB_LOG:Ljava/lang/String; = "LBAdController"

.field public static final SDK_LEVEL:Ljava/lang/String; = "00"

.field public static final SDK_VERSION:Ljava/lang/String; = "4"


# instance fields
.field private final MAX_APP_ICONS:I

.field private am:Landroid/app/AlarmManager;

.field private context:Landroid/content/Context;

.field private initialized:Z

.field private listenNotif:Lcom/pad/android/listener/AdNotificationListener;

.field private loadIcon:Z

.field private notificationLaunchType:Ljava/lang/String;

.field private onRequest:Z

.field private onTimer:Z

.field private pendingAlarmIntent:Landroid/app/PendingIntent;

.field private results:Lorg/json/JSONObject;

.field private sectionid:Ljava/lang/String;

.field private useNotification:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/pad/android/xappad/AdController;->MAX_APP_ICONS:I

    .line 51
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->initialized:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    .line 55
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->useNotification:Z

    .line 56
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    .line 57
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->onRequest:Z

    .line 58
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->loadIcon:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "sid"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/pad/android/xappad/AdController;->MAX_APP_ICONS:I

    .line 51
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->initialized:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    .line 55
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->useNotification:Z

    .line 56
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    .line 57
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->onRequest:Z

    .line 58
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->loadIcon:Z

    .line 72
    iput-object p1, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/pad/android/listener/AdNotificationListener;)V
    .locals 0
    .parameter "ctx"
    .parameter "sid"
    .parameter "lt"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/pad/android/xappad/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    iput-object p3, p0, Lcom/pad/android/xappad/AdController;->listenNotif:Lcom/pad/android/listener/AdNotificationListener;

    .line 112
    return-void
.end method

.method static synthetic access$0(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pad/android/xappad/AdController;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 978
    invoke-direct/range {p0 .. p7}, Lcom/pad/android/xappad/AdController;->triggerNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    return-object v0
.end method

.method private displayIcon()V
    .locals 4

    .prologue
    .line 1174
    const-string v2, "LBAdController"

    const-string v3, "displayIcon called"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 1177
    const-string v2, "LBAdController"

    const-string v3, "Results are null - no icon will be loaded"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v3, "show"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 1185
    new-instance v1, Lcom/pad/android/xappad/AdController$AdIcon;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pad/android/xappad/AdController$AdIcon;-><init>(Lcom/pad/android/xappad/AdController;Lcom/pad/android/xappad/AdController$AdIcon;)V

    .line 1186
    .local v1, ic:Lcom/pad/android/xappad/AdController$AdIcon;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/pad/android/xappad/AdController$AdIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1189
    .end local v1           #ic:Lcom/pad/android/xappad/AdController$AdIcon;
    :catch_0
    move-exception v0

    .line 1191
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LBAdController"

    invoke-static {v2, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private incrementIterationCounter()V
    .locals 6

    .prologue
    .line 1125
    const-string v3, "LBAdController"

    const-string v4, "increment counter called"

    invoke-static {v3, v4}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v4, "Preference"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1128
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1130
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SD_ITERATION_COUNTER_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1131
    .local v1, iterationcounter:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SD_ITERATION_COUNTER_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1133
    return-void
.end method

.method private invalidateOptin()V
    .locals 6

    .prologue
    .line 246
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v4, "invalidateoptin"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    const-string v1, "0"

    .line 251
    .local v1, invalidate:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v4, "invalidateoptin"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 253
    :goto_0
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v4, "Preference"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 256
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SD_APP_OPTIN_SHOWN"

    const-string v4, "invalid"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #invalidate:Ljava/lang/String;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 252
    .restart local v1       #invalidate:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private loadNotificationDetails()V
    .locals 45

    .prologue
    .line 734
    const-string v3, "LBAdController"

    const-string v12, "loadNotificationDetails called"

    invoke-static {v3, v12}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 737
    const-string v3, "LBAdController"

    const-string v12, "Notification will not be loaded - no internet connection"

    invoke-static {v3, v12}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "show"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "1"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 745
    const-string v3, "LBAdController"

    const-string v12, "notification to be fired"

    invoke-static {v3, v12}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v12, "notification"

    invoke-virtual {v3, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 748
    .local v8, notificationManager:Landroid/app/NotificationManager;
    const/4 v3, 0x5

    new-array v0, v3, [I

    move-object/from16 v27, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    fill-array-data v27, :array_0

    .line 751
    .local v27, iconArray:[I
    const/4 v4, 0x0

    .line 754
    .local v4, icon:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationicon"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 762
    :try_start_2
    aget v4, v27, v4

    .line 764
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationtext"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 765
    .local v5, text:Ljava/lang/CharSequence;
    const-string v29, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 768
    .local v29, instruction:Ljava/lang/CharSequence;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationinstruction"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_12

    move-result-object v29

    .line 771
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationtext"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 772
    .local v6, contentTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationdescription"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v7

    .line 776
    .local v7, contentText:Ljava/lang/CharSequence;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationdisplay"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 777
    .local v42, toUseText:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 779
    const-string v3, "notificationtext"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_11

    move-result-object v6

    .line 782
    move-object/from16 v7, v29

    .line 796
    .end local v42           #toUseText:Ljava/lang/String;
    :cond_2
    :goto_3
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".R$drawable"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v34

    .line 797
    .local v34, pkg:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "notif_icon"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result v4

    .line 805
    .end local v34           #pkg:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_4
    :try_start_7
    const-string v24, "standard"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 808
    .local v24, display:Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationdisplaytype"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    move-result-object v24

    .line 811
    :goto_5
    const/16 v36, 0x0

    .line 812
    .local v36, success:Z
    :try_start_9
    new-instance v30, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v13, "notificationurl"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, v30

    invoke-direct {v0, v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 813
    .local v30, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v30

    invoke-static {v3, v12, v0, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v9

    .line 814
    .local v9, contentIntent:Landroid/app/PendingIntent;
    const/16 v23, -0x1

    .local v23, customLayout:I
    const/16 v33, -0x1

    .local v33, mainView:I
    const/16 v20, -0x1

    .local v20, bannerView:I
    const/16 v37, -0x1

    .line 817
    .local v37, textView:I
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".R$layout"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v32

    .line 818
    .local v32, layoutCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "xappad_notification"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v23

    .line 819
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".R$id"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v28

    .line 820
    .local v28, idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "xappad_mainview"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v33

    .line 821
    const-string v3, "xappad_bannerview"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v20

    .line 822
    const-string v3, "xappad_customtextview"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    move-result v37

    .line 826
    .end local v28           #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v32           #layoutCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_6
    :try_start_b
    const-string v3, "customtext"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, -0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_b

    const/4 v3, -0x1

    move/from16 v0, v33

    if-eq v0, v3, :cond_b

    const/4 v3, -0x1

    move/from16 v0, v37

    if-eq v0, v3, :cond_b

    .line 829
    const/16 v41, -0x1

    .local v41, textViewTitle:I
    const/16 v39, -0x1

    .local v39, textViewDsc:I
    const/16 v38, -0x1

    .local v38, textViewCta:I
    const/16 v40, -0x1

    .line 832
    .local v40, textViewSmall:I
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".R$id"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v28

    .line 833
    .restart local v28       #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "xappad_customtextviewtitle"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v41

    .line 834
    const-string v3, "xappad_customtextviewdescription"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v39

    .line 835
    const-string v3, "xappad_customtextviewsmalltext"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v40

    .line 836
    const-string v3, "xappad_customtextviewcta"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v38

    .line 837
    const/4 v3, -0x1

    move/from16 v0, v37

    if-eq v0, v3, :cond_a

    const/4 v3, -0x1

    move/from16 v0, v41

    if-eq v0, v3, :cond_a

    const/4 v3, -0x1

    move/from16 v0, v39

    if-eq v0, v3, :cond_a

    const/4 v3, -0x1

    move/from16 v0, v40

    if-eq v0, v3, :cond_a

    const/4 v3, -0x1

    move/from16 v0, v38

    if-eq v0, v3, :cond_a

    .line 839
    new-instance v10, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v23

    invoke-direct {v10, v3, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 842
    .local v10, rv:Landroid/widget/RemoteViews;
    :try_start_d
    const-string v3, "setBackgroundColor"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v13, "notificationcustombackground"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    move/from16 v0, v33

    invoke-virtual {v10, v0, v3, v12}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    .line 844
    :goto_7
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationcustomtext"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v41

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 847
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationcustomtextcolor"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move/from16 v0, v41

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 849
    :goto_8
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationcustomdescription"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 852
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationcustomdescriptioncolor"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move/from16 v0, v39

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    .line 854
    :goto_9
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationcustomsmalltext"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    .line 857
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationcustomsmalltextcolor"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move/from16 v0, v40

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    .line 859
    :goto_a
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationcustomcta"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    .line 862
    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationcustomctatextcolor"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move/from16 v0, v38

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    .line 864
    :goto_b
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_3

    .line 866
    const/4 v3, 0x4

    :try_start_16
    move/from16 v0, v20

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_3
    move-object/from16 v3, p0

    .line 868
    invoke-direct/range {v3 .. v10}, Lcom/pad/android/xappad/AdController;->triggerNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5

    move-result v36

    .line 914
    .end local v10           #rv:Landroid/widget/RemoteViews;
    .end local v28           #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v38           #textViewCta:I
    .end local v39           #textViewDsc:I
    .end local v40           #textViewSmall:I
    .end local v41           #textViewTitle:I
    :goto_c
    if-eqz v36, :cond_4

    .line 916
    :try_start_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v12, "Preference"

    const/4 v13, 0x2

    invoke-virtual {v3, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    .line 917
    .local v35, pref:Landroid/content/SharedPreferences;
    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    .line 918
    .local v26, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    .line 919
    .local v43, when:J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "SD_NOTIFICATION_ID_"

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2

    move-result v31

    .line 922
    .local v31, lastid:I
    :try_start_18
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "SD_NOTIFICATION_FIRED_"

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    move-wide/from16 v1, v43

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 923
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9

    .line 930
    :goto_d
    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v12, "notificationmultiple"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "1"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 933
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "SD_NOTIFICATION_ID_"

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v31, v31, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 934
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    .line 949
    .end local v4           #icon:I
    .end local v5           #text:Ljava/lang/CharSequence;
    .end local v6           #contentTitle:Ljava/lang/CharSequence;
    .end local v7           #contentText:Ljava/lang/CharSequence;
    .end local v8           #notificationManager:Landroid/app/NotificationManager;
    .end local v9           #contentIntent:Landroid/app/PendingIntent;
    .end local v20           #bannerView:I
    .end local v23           #customLayout:I
    .end local v24           #display:Ljava/lang/String;
    .end local v26           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v27           #iconArray:[I
    .end local v29           #instruction:Ljava/lang/CharSequence;
    .end local v30           #intent:Landroid/content/Intent;
    .end local v31           #lastid:I
    .end local v33           #mainView:I
    .end local v35           #pref:Landroid/content/SharedPreferences;
    .end local v36           #success:Z
    .end local v37           #textView:I
    .end local v43           #when:J
    :cond_4
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/xappad/AdController;->incrementIterationCounter()V

    .line 952
    :try_start_1a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    const-string v12, "Alarm"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 954
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/xappad/AdController;->setAlarm()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_0

    .line 957
    :catch_0
    move-exception v25

    .line 959
    .local v25, e:Ljava/lang/Exception;
    const-string v3, "LBAdController"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error while setting Alarm - "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v3, "LBAdController"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 756
    .end local v25           #e:Ljava/lang/Exception;
    .restart local v4       #icon:I
    .restart local v8       #notificationManager:Landroid/app/NotificationManager;
    .restart local v27       #iconArray:[I
    :catch_1
    move-exception v25

    .line 758
    .restart local v25       #e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 762
    :try_start_1b
    aget v4, v27, v4

    goto/16 :goto_1

    .line 761
    .end local v25           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 762
    aget v4, v27, v4

    .line 763
    throw v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2

    .line 942
    .end local v4           #icon:I
    .end local v8           #notificationManager:Landroid/app/NotificationManager;
    .end local v27           #iconArray:[I
    :catch_2
    move-exception v25

    .line 943
    .restart local v25       #e:Ljava/lang/Exception;
    :try_start_1c
    const-string v3, "LBAdController"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 949
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/xappad/AdController;->incrementIterationCounter()V

    .line 952
    :try_start_1d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    const-string v12, "Alarm"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 954
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/xappad/AdController;->setAlarm()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3

    goto/16 :goto_0

    .line 957
    :catch_3
    move-exception v25

    .line 959
    const-string v3, "LBAdController"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error while setting Alarm - "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v3, "LBAdController"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 787
    .end local v25           #e:Ljava/lang/Exception;
    .restart local v4       #icon:I
    .restart local v5       #text:Ljava/lang/CharSequence;
    .restart local v6       #contentTitle:Ljava/lang/CharSequence;
    .restart local v7       #contentText:Ljava/lang/CharSequence;
    .restart local v8       #notificationManager:Landroid/app/NotificationManager;
    .restart local v27       #iconArray:[I
    .restart local v29       #instruction:Ljava/lang/CharSequence;
    .restart local v42       #toUseText:Ljava/lang/String;
    :cond_7
    :try_start_1e
    const-string v6, "You have 1 new message"

    .line 788
    const-string v7, "Tap to View"
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_11

    goto/16 :goto_3

    .line 799
    .end local v42           #toUseText:Ljava/lang/String;
    :catch_4
    move-exception v25

    .line 801
    .restart local v25       #e:Ljava/lang/Exception;
    :try_start_1f
    const-string v3, "LBAdController"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Custom Notification Icon not used - "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_2

    goto/16 :goto_4

    .line 947
    .end local v4           #icon:I
    .end local v5           #text:Ljava/lang/CharSequence;
    .end local v6           #contentTitle:Ljava/lang/CharSequence;
    .end local v7           #contentText:Ljava/lang/CharSequence;
    .end local v8           #notificationManager:Landroid/app/NotificationManager;
    .end local v25           #e:Ljava/lang/Exception;
    .end local v27           #iconArray:[I
    .end local v29           #instruction:Ljava/lang/CharSequence;
    :catchall_1
    move-exception v3

    .line 949
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/xappad/AdController;->incrementIterationCounter()V

    .line 952
    :try_start_20
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    const-string v13, "Alarm"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 954
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/xappad/AdController;->setAlarm()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_7

    .line 962
    :cond_9
    :goto_f
    throw v3

    .line 873
    .restart local v4       #icon:I
    .restart local v5       #text:Ljava/lang/CharSequence;
    .restart local v6       #contentTitle:Ljava/lang/CharSequence;
    .restart local v7       #contentText:Ljava/lang/CharSequence;
    .restart local v8       #notificationManager:Landroid/app/NotificationManager;
    .restart local v9       #contentIntent:Landroid/app/PendingIntent;
    .restart local v20       #bannerView:I
    .restart local v23       #customLayout:I
    .restart local v24       #display:Ljava/lang/String;
    .restart local v27       #iconArray:[I
    .restart local v28       #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v29       #instruction:Ljava/lang/CharSequence;
    .restart local v30       #intent:Landroid/content/Intent;
    .restart local v33       #mainView:I
    .restart local v36       #success:Z
    .restart local v37       #textView:I
    .restart local v38       #textViewCta:I
    .restart local v39       #textViewDsc:I
    .restart local v40       #textViewSmall:I
    .restart local v41       #textViewTitle:I
    :cond_a
    const/16 v18, 0x0

    move-object/from16 v11, p0

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    :try_start_21
    invoke-direct/range {v11 .. v18}, Lcom/pad/android/xappad/AdController;->triggerNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_5

    move-result v36

    goto/16 :goto_c

    .line 876
    .end local v28           #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_5
    move-exception v25

    .line 879
    .restart local v25       #e:Ljava/lang/Exception;
    const/16 v18, 0x0

    move-object/from16 v11, p0

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    :try_start_22
    invoke-direct/range {v11 .. v18}, Lcom/pad/android/xappad/AdController;->triggerNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z

    move-result v36

    goto/16 :goto_c

    .line 882
    .end local v25           #e:Ljava/lang/Exception;
    .end local v38           #textViewCta:I
    .end local v39           #textViewDsc:I
    .end local v40           #textViewSmall:I
    .end local v41           #textViewTitle:I
    :cond_b
    const-string v3, "banner"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_2

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, -0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_d

    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_d

    .line 884
    const/16 v22, -0x1

    .line 887
    .local v22, bannerViewTxt:I
    :try_start_23
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".R$id"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v28

    .line 888
    .restart local v28       #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "xappad_bannerviewimg"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v21

    .line 889
    .local v21, bannerViewImg:I
    const-string v3, "xappad_bannerviewtext"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v22

    .line 890
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_c

    const/4 v3, -0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_c

    const/4 v3, -0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_c

    .line 894
    new-instance v11, Lcom/pad/android/xappad/AdController$NotificationImg;

    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    invoke-direct/range {v11 .. v18}, Lcom/pad/android/xappad/AdController$NotificationImg;-><init>(Lcom/pad/android/xappad/AdController;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;)V

    .line 895
    .local v11, img:Lcom/pad/android/xappad/AdController$NotificationImg;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v14, "notificationbannerimg"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    invoke-virtual {v11, v3}, Lcom/pad/android/xappad/AdController$NotificationImg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_6

    goto/16 :goto_c

    .line 903
    .end local v11           #img:Lcom/pad/android/xappad/AdController$NotificationImg;
    .end local v21           #bannerViewImg:I
    .end local v28           #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_6
    move-exception v25

    .line 906
    .restart local v25       #e:Ljava/lang/Exception;
    const/16 v19, 0x0

    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    :try_start_24
    invoke-direct/range {v12 .. v19}, Lcom/pad/android/xappad/AdController;->triggerNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_2

    move-result v36

    goto/16 :goto_c

    .line 900
    .end local v25           #e:Ljava/lang/Exception;
    .restart local v21       #bannerViewImg:I
    .restart local v28       #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_c
    const/16 v19, 0x0

    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    :try_start_25
    invoke-direct/range {v12 .. v19}, Lcom/pad/android/xappad/AdController;->triggerNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_6

    move-result v36

    goto/16 :goto_c

    .line 911
    .end local v21           #bannerViewImg:I
    .end local v22           #bannerViewTxt:I
    .end local v28           #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_d
    const/16 v19, 0x0

    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    :try_start_26
    invoke-direct/range {v12 .. v19}, Lcom/pad/android/xappad/AdController;->triggerNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_2

    move-result v36

    goto/16 :goto_c

    .line 957
    .end local v4           #icon:I
    .end local v5           #text:Ljava/lang/CharSequence;
    .end local v6           #contentTitle:Ljava/lang/CharSequence;
    .end local v7           #contentText:Ljava/lang/CharSequence;
    .end local v8           #notificationManager:Landroid/app/NotificationManager;
    .end local v9           #contentIntent:Landroid/app/PendingIntent;
    .end local v20           #bannerView:I
    .end local v23           #customLayout:I
    .end local v24           #display:Ljava/lang/String;
    .end local v27           #iconArray:[I
    .end local v29           #instruction:Ljava/lang/CharSequence;
    .end local v30           #intent:Landroid/content/Intent;
    .end local v33           #mainView:I
    .end local v36           #success:Z
    .end local v37           #textView:I
    :catch_7
    move-exception v25

    .line 959
    .restart local v25       #e:Ljava/lang/Exception;
    const-string v12, "LBAdController"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Error while setting Alarm - "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v12, "LBAdController"

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_f

    .line 937
    .end local v25           #e:Ljava/lang/Exception;
    .restart local v4       #icon:I
    .restart local v5       #text:Ljava/lang/CharSequence;
    .restart local v6       #contentTitle:Ljava/lang/CharSequence;
    .restart local v7       #contentText:Ljava/lang/CharSequence;
    .restart local v8       #notificationManager:Landroid/app/NotificationManager;
    .restart local v9       #contentIntent:Landroid/app/PendingIntent;
    .restart local v20       #bannerView:I
    .restart local v23       #customLayout:I
    .restart local v24       #display:Ljava/lang/String;
    .restart local v26       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v27       #iconArray:[I
    .restart local v29       #instruction:Ljava/lang/CharSequence;
    .restart local v30       #intent:Landroid/content/Intent;
    .restart local v31       #lastid:I
    .restart local v33       #mainView:I
    .restart local v35       #pref:Landroid/content/SharedPreferences;
    .restart local v36       #success:Z
    .restart local v37       #textView:I
    .restart local v43       #when:J
    :catch_8
    move-exception v3

    goto/16 :goto_e

    .line 925
    :catch_9
    move-exception v3

    goto/16 :goto_d

    .line 863
    .end local v26           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v31           #lastid:I
    .end local v35           #pref:Landroid/content/SharedPreferences;
    .end local v43           #when:J
    .restart local v10       #rv:Landroid/widget/RemoteViews;
    .restart local v28       #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v38       #textViewCta:I
    .restart local v39       #textViewDsc:I
    .restart local v40       #textViewSmall:I
    .restart local v41       #textViewTitle:I
    :catch_a
    move-exception v3

    goto/16 :goto_b

    .line 858
    :catch_b
    move-exception v3

    goto/16 :goto_a

    .line 853
    :catch_c
    move-exception v3

    goto/16 :goto_9

    .line 848
    :catch_d
    move-exception v3

    goto/16 :goto_8

    .line 843
    :catch_e
    move-exception v3

    goto/16 :goto_7

    .line 824
    .end local v10           #rv:Landroid/widget/RemoteViews;
    .end local v28           #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v38           #textViewCta:I
    .end local v39           #textViewDsc:I
    .end local v40           #textViewSmall:I
    .end local v41           #textViewTitle:I
    :catch_f
    move-exception v3

    goto/16 :goto_6

    .line 810
    .end local v9           #contentIntent:Landroid/app/PendingIntent;
    .end local v20           #bannerView:I
    .end local v23           #customLayout:I
    .end local v30           #intent:Landroid/content/Intent;
    .end local v33           #mainView:I
    .end local v36           #success:Z
    .end local v37           #textView:I
    :catch_10
    move-exception v3

    goto/16 :goto_5

    .line 791
    .end local v24           #display:Ljava/lang/String;
    :catch_11
    move-exception v3

    goto/16 :goto_3

    .line 770
    .end local v6           #contentTitle:Ljava/lang/CharSequence;
    .end local v7           #contentText:Ljava/lang/CharSequence;
    :catch_12
    move-exception v3

    goto/16 :goto_2

    .line 748
    :array_0
    .array-data 0x4
        0x74t 0x0t 0x8t 0x1t
        0x2bt 0x0t 0x8t 0x1t
        0xct 0x0t 0x8t 0x1t
        0xat 0x0t 0x8t 0x1t
        0x72t 0x0t 0x8t 0x1t
    .end array-data
.end method

.method private loadNotificationOnTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 416
    const-string v0, "LBAdController"

    const-string v1, "loadNotificationOnTimer called"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->initialized:Z

    if-nez v0, :cond_0

    .line 420
    iput-boolean v2, p0, Lcom/pad/android/xappad/AdController;->useNotification:Z

    .line 421
    iput-boolean v2, p0, Lcom/pad/android/xappad/AdController;->onRequest:Z

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    .line 423
    invoke-virtual {p0}, Lcom/pad/android/xappad/AdController;->initialize()V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->loadNotificationTimerDetails()V

    goto :goto_0
.end method

.method private loadNotificationTimerDetails()V
    .locals 3

    .prologue
    .line 433
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 435
    const-string v1, "LBAdController"

    const-string v2, "Notification will not be loaded - no internet connection"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v2, "show"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setAlarm()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private setAlarm()V
    .locals 18

    .prologue
    .line 551
    const-string v13, "LBAdController"

    const-string v14, "setAlarm called"

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v14, "Preference"

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 553
    .local v10, pref:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 554
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    invoke-virtual {v13}, Lorg/json/JSONObject;->length()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_3

    .line 557
    const-string v13, "LBAdController"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "internet connection found....initialize alarm from settings - Result Length="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SD_ITERATION_COUNTER_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "0"

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    .line 562
    .local v5, iterationcounter:I
    const/4 v11, 0x0

    .line 565
    .local v11, resultcookie:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v14, "notificationcookie"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    .line 572
    :goto_0
    :try_start_2
    const-string v13, "LBAdController"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Values: ck="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", ic="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", nLT="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v14, "alarm"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    .line 575
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-class v14, Lcom/pad/android/xappad/AdNotification;

    invoke-direct {v4, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 576
    .local v4, intent:Landroid/content/Intent;
    const-string v13, "sectionid"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    const/high16 v15, 0x800

    invoke-static {v13, v14, v4, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    .line 578
    const/4 v13, 0x1

    if-eq v11, v13, :cond_1

    if-nez v11, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    const-string v14, "Alarm"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 581
    :cond_1
    const-string v13, "LBAdController"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "alarm will be initialized - ck is "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", ic is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", nLT is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 584
    .local v1, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v8

    .line 585
    .local v8, now:J
    const/4 v12, 0x0

    .line 588
    .local v12, startat:I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v14, "notificationstart"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 589
    const/16 v13, 0xd

    invoke-virtual {v1, v13, v12}, Ljava/util/Calendar;->add(II)V

    .line 591
    const-string v13, "LBAdController"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Alarm initialized - Scheduled at "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", current time = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v13, "LBAdController"

    const-string v14, "----------------------------------------"

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    const/4 v14, 0x0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 598
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SD_ALARM_TIME_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 599
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SD_WAKE_TIME_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-interface {v3, v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 600
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SD_ALARM_INTERVAL_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    int-to-long v14, v12

    invoke-interface {v3, v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 601
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 648
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #iterationcounter:I
    .end local v8           #now:J
    .end local v11           #resultcookie:I
    .end local v12           #startat:I
    :goto_1
    return-void

    .line 567
    .restart local v5       #iterationcounter:I
    .restart local v11       #resultcookie:I
    :catch_0
    move-exception v2

    .line 569
    .local v2, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 603
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #cal:Ljava/util/Calendar;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v8       #now:J
    .restart local v12       #startat:I
    :catch_1
    move-exception v2

    .line 605
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v13, "LBAdController"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Error caused while setting Alarm (if case): "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v13, "LBAdController"

    invoke-static {v13, v2}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 642
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #iterationcounter:I
    .end local v8           #now:J
    .end local v11           #resultcookie:I
    .end local v12           #startat:I
    :catch_2
    move-exception v13

    goto :goto_1

    .line 614
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #iterationcounter:I
    .restart local v11       #resultcookie:I
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SD_WAKE_TIME_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, 0x0

    invoke-interface {v10, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 616
    .local v6, newstartat:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 617
    .restart local v1       #cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-wide v8

    .line 621
    .restart local v8       #now:J
    :try_start_5
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 623
    const-string v13, "LBAdController"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Alarm reset - Scheduled at "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", current time = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v13, "LBAdController"

    const-string v14, "----------------------------------------"

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    const/4 v14, 0x0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 630
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SD_ALARM_TIME_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 631
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SD_WAKE_TIME_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 633
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 635
    :catch_3
    move-exception v2

    .line 637
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v13, "LBAdController"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Error caused while setting Alarm (else case): "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v13, "LBAdController"

    invoke-static {v13, v2}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 646
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #iterationcounter:I
    .end local v6           #newstartat:J
    .end local v8           #now:J
    .end local v11           #resultcookie:I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/pad/android/xappad/AdController;->setAlarmFromCookie()V

    goto/16 :goto_1
.end method

.method private setAlarmFromCookie()V
    .locals 17

    .prologue
    .line 455
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v14, "Preference"

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 456
    .local v10, pref:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 458
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SD_ALARM_ATTEMPTED_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "0"

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v11, v13

    .line 459
    .local v11, timesAttempted:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 460
    .local v8, now:J
    const-wide/16 v13, 0x2710

    add-long v6, v8, v13

    .line 461
    .local v6, newStartTimeTime:J
    const-wide/16 v13, 0x19

    cmp-long v13, v11, v13

    if-lez v13, :cond_0

    .line 463
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SD_ALARM_INTERVAL_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, 0x0

    invoke-interface {v10, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 464
    .local v1, alarminterval:J
    const-string v13, "LBAdController"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "No internet, already tried 5 times, set it to timer "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "s"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v13, "LBAdController"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Times attempted = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v1

    add-long v6, v8, v13

    .line 468
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SD_ALARM_TIME_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 469
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SD_ALARM_ATTEMPTED_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "0"

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 470
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 487
    .end local v1           #alarminterval:J
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v14, "alarm"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    .line 489
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-class v14, Lcom/pad/android/xappad/AdNotification;

    invoke-direct {v5, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    .local v5, intent:Landroid/content/Intent;
    const-string v13, "sectionid"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v15, 0x800

    invoke-static {v13, v14, v5, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    .line 495
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v13, v14, v6, v7, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_1
    return-void

    .line 472
    .end local v5           #intent:Landroid/content/Intent;
    :cond_0
    const-wide/16 v13, 0x5

    rem-long v13, v11, v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_1

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_1

    .line 475
    const-wide/32 v13, 0x927c0

    add-long v6, v8, v13

    .line 476
    const-string v13, "LBAdController"

    const-string v14, "No internet, retry alarm in 10 mins"

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SD_ALARM_ATTEMPTED_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v15, 0x1

    add-long/2addr v15, v11

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 478
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 482
    :cond_1
    const-string v13, "LBAdController"

    const-string v14, "No internet, retry alarm in 10s"

    invoke-static {v13, v14}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SD_ALARM_ATTEMPTED_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v15, 0x1

    add-long/2addr v15, v11

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 484
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 497
    .restart local v5       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 498
    .local v4, ex:Ljava/lang/Exception;
    const-string v13, "LBAdController"

    invoke-static {v13, v4}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private setNotification()V
    .locals 4

    .prologue
    .line 369
    const-string v2, "LBAdController"

    const-string v3, "setNotification called"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 372
    const-string v2, "LBAdController"

    const-string v3, "Results are null - no notification will be loaded"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/pad/android/xappad/AdController;->onRequest:Z

    if-eqz v2, :cond_2

    .line 380
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->loadNotificationDetails()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LBAdController"

    invoke-static {v2, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 382
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    if-eqz v2, :cond_3

    .line 384
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->loadNotificationTimerDetails()V

    goto :goto_0

    .line 389
    :cond_3
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v3, "show"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 391
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v3, "notificationtype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, notificationtype:Ljava/lang/String;
    const-string v2, "Immediate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 394
    const-string v2, "LBAdController"

    const-string v3, "Immediate notification to be fired"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v2, "App"

    invoke-virtual {p0, v2}, Lcom/pad/android/xappad/AdController;->loadNotificationOnRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_4
    const-string v2, "Recurring"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    const-string v2, "LBAdController"

    const-string v3, "Recurring notification to be created"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->loadNotificationOnTimer()V

    goto :goto_0

    .line 405
    .end local v1           #notificationtype:Ljava/lang/String;
    :cond_5
    const-string v2, "LBAdController"

    const-string v3, "Notification not be set for this user"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setReminder()V
    .locals 22

    .prologue
    .line 265
    const-string v18, "LBAdController"

    const-string v19, "setReminder called"

    invoke-static/range {v18 .. v19}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "remindertype"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "Preference"

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 269
    .local v10, pref:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 270
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "1"

    .line 273
    .local v7, hasShown:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "remindertype"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 274
    .local v12, reminderType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "remindertext"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 275
    .local v16, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "remindershow"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, force:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "SD_REMINDER_SHOWN_"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 277
    .local v13, shown:Ljava/lang/String;
    const-string v18, "always"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const/16 v17, 0x0

    .line 278
    .local v17, toShow:Z
    :goto_0
    if-eqz v17, :cond_0

    .line 280
    const-string v18, "display"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 282
    const-string v18, "LBAdController"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Reminder Type Set - "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-class v19, Lcom/pad/android/xappad/AdReminderNotification;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .local v8, intent:Landroid/content/Intent;
    const-string v18, "sectionid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v18, "alarmtype"

    const-string v19, "reminder"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v18, "remindertitle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "remindertitle"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v18, "remindertext"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v18, "remindericon"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "remindericon"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/high16 v20, 0x800

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 292
    .local v9, pAI:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    move-object/from16 v20, v0

    const-string v21, "reminderstart"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v18, v20

    .line 294
    .local v14, startAt:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "alarm"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    .local v11, reminderAlarm:Landroid/app/AlarmManager;
    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    invoke-virtual {v11, v0, v14, v15, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    .end local v6           #force:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #pAI:Landroid/app/PendingIntent;
    .end local v11           #reminderAlarm:Landroid/app/AlarmManager;
    .end local v12           #reminderType:Ljava/lang/String;
    .end local v13           #shown:Ljava/lang/String;
    .end local v14           #startAt:J
    .end local v16           #text:Ljava/lang/String;
    .end local v17           #toShow:Z
    :cond_0
    :goto_1
    const-string v18, "LBAdController"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Reminder Set, set preference to "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "SD_REMINDER_SHOWN_"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #hasShown:Ljava/lang/String;
    .end local v10           #pref:Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 277
    .restart local v4       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #force:Ljava/lang/String;
    .restart local v7       #hasShown:Ljava/lang/String;
    .restart local v10       #pref:Landroid/content/SharedPreferences;
    .restart local v12       #reminderType:Ljava/lang/String;
    .restart local v13       #shown:Ljava/lang/String;
    .restart local v16       #text:Ljava/lang/String;
    :cond_2
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 300
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #pAI:Landroid/app/PendingIntent;
    .restart local v11       #reminderAlarm:Landroid/app/AlarmManager;
    .restart local v14       #startAt:J
    .restart local v17       #toShow:Z
    :catch_0
    move-exception v5

    .line 302
    .local v5, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v18, "LBAdController"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 303
    const-string v18, "AdController"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Error while trying to set reminder alarm - "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 308
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v6           #force:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #pAI:Landroid/app/PendingIntent;
    .end local v11           #reminderAlarm:Landroid/app/AlarmManager;
    .end local v12           #reminderType:Ljava/lang/String;
    .end local v13           #shown:Ljava/lang/String;
    .end local v14           #startAt:J
    .end local v16           #text:Ljava/lang/String;
    .end local v17           #toShow:Z
    :catch_1
    move-exception v3

    .line 310
    .local v3, e:Ljava/lang/Exception;
    const-string v18, "LBAdController"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 311
    const-string v18, "LBAdController"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Error in setReminder - "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v7, "0"

    goto :goto_1
.end method

.method private setResumeAlarm()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 528
    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    .line 530
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-class v7, Lcom/pad/android/xappad/AdNotification;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "sectionid"

    iget-object v7, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const/high16 v7, 0x800

    invoke-static {v6, v8, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 535
    .local v4, now:J
    const-wide/32 v6, 0x15f900

    add-long v2, v4, v6

    .line 539
    .local v2, newStartTimeTime:J
    :try_start_0
    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 541
    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v2, v3, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, ex:Ljava/lang/Exception;
    const-string v6, "LBAdController"

    invoke-static {v6, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 545
    const-string v6, "LBAdController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error while trying to set pause alarm - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private triggerNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    .locals 4
    .parameter "icon"
    .parameter "text"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "nM"
    .parameter "contentIntent"
    .parameter "rv"

    .prologue
    .line 980
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 983
    .local v1, when:J
    :try_start_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 984
    .local v0, notification:Landroid/app/Notification;
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 986
    if-eqz p7, :cond_0

    .line 988
    iput-object p6, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 989
    iput-object p7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 996
    :goto_0
    const/16 v3, 0x3e9

    invoke-virtual {p5, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 997
    const/4 v3, 0x1

    .line 1000
    .end local v0           #notification:Landroid/app/Notification;
    :goto_1
    return v3

    .line 993
    .restart local v0       #notification:Landroid/app/Notification;
    :cond_0
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    invoke-virtual {v0, v3, p3, p4, p6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    .end local v0           #notification:Landroid/app/Notification;
    :catch_0
    move-exception v3

    .line 1000
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public initialize()V
    .locals 6

    .prologue
    .line 189
    iget-boolean v1, p0, Lcom/pad/android/xappad/AdController;->useNotification:Z

    if-eqz v1, :cond_0

    const-string v4, "notification"

    .line 190
    .local v4, type:Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/pad/android/xappad/AdTask;

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    iget-object v5, p0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pad/android/xappad/AdTask;-><init>(Lcom/pad/android/xappad/AdController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v0, task:Lcom/pad/android/xappad/AdTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/pad/android/xappad/AdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    return-void

    .line 189
    .end local v0           #task:Lcom/pad/android/xappad/AdTask;
    .end local v4           #type:Ljava/lang/String;
    :cond_0
    const-string v4, "icon"

    goto :goto_0
.end method

.method public initialized()V
    .locals 5

    .prologue
    .line 204
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pad/android/xappad/AdController;->initialized:Z

    .line 205
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    .line 207
    iget-boolean v2, p0, Lcom/pad/android/xappad/AdController;->useNotification:Z

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v3, "Preference"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 210
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SD_NOTIFICATION_REQUESTED_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v3, "remindertype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setReminder()V

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v3, "invalidateoptin"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->invalidateOptin()V

    .line 224
    :cond_2
    iget-boolean v2, p0, Lcom/pad/android/xappad/AdController;->loadIcon:Z

    if-eqz v2, :cond_4

    .line 226
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->displayIcon()V

    .line 242
    :cond_3
    :goto_0
    return-void

    .line 230
    :cond_4
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setNotification()V

    goto :goto_0

    .line 235
    :cond_5
    iget-boolean v2, p0, Lcom/pad/android/xappad/AdController;->loadIcon:Z

    if-nez v2, :cond_3

    .line 238
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setAlarmFromCookie()V

    goto :goto_0
.end method

.method public loadIcon()V
    .locals 10

    .prologue
    .line 1137
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v2, "Preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1138
    .local v9, pref:Landroid/content/SharedPreferences;
    const-string v1, "SD_APP_OPTIN_SHOWN"

    const-string v2, "notset"

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1139
    .local v8, optinShowed:Ljava/lang/String;
    const-string v1, "SD_APP_OPTIN_SHOWN"

    const-string v2, "notset"

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1140
    .local v7, optin:Ljava/lang/String;
    const-string v1, "notset"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    new-instance v0, Lcom/pad/android/util/AdOptinRequest;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    new-instance v4, Lcom/pad/android/xappad/AdController$2;

    invoke-direct {v4, p0}, Lcom/pad/android/xappad/AdController$2;-><init>(Lcom/pad/android/xappad/AdController;)V

    .line 1147
    const-string v5, "0"

    .line 1142
    invoke-direct/range {v0 .. v5}, Lcom/pad/android/util/AdOptinRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Lcom/pad/android/listener/AdOptinListener;Ljava/lang/String;)V

    .line 1148
    .local v0, opt:Lcom/pad/android/util/AdOptinRequest;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pad/android/util/AdOptinRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1170
    .end local v0           #opt:Lcom/pad/android/util/AdOptinRequest;
    :goto_0
    return-void

    .line 1150
    :cond_0
    const-string v1, "notset"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1153
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1154
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "SD_APP_OPTIN_SHOWN"

    const-string v2, "invalid"

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1155
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1159
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v1, "LBAdController"

    const-string v2, "loadIcon called"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iget-boolean v1, p0, Lcom/pad/android/xappad/AdController;->initialized:Z

    if-nez v1, :cond_2

    .line 1162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->loadIcon:Z

    .line 1163
    invoke-virtual {p0}, Lcom/pad/android/xappad/AdController;->initialize()V

    goto :goto_0

    .line 1167
    :cond_2
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->displayIcon()V

    goto :goto_0
.end method

.method public loadNotification()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 328
    const-string v1, "LBAdController"

    const-string v2, "loadNotification called"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v2, "Preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 331
    .local v9, pref:Landroid/content/SharedPreferences;
    const-string v1, "SD_APP_OPTIN_SHOWN"

    const-string v2, "notset"

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, optinShowed:Ljava/lang/String;
    const-string v1, "SD_APP_OPTIN"

    const-string v2, "notset"

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, optin:Ljava/lang/String;
    const-string v1, "notset"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    const-string v1, "LBAdController"

    const-string v2, "optin not set, do optin first..."

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v0, Lcom/pad/android/util/AdOptinRequest;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    new-instance v4, Lcom/pad/android/xappad/AdController$1;

    invoke-direct {v4, p0}, Lcom/pad/android/xappad/AdController$1;-><init>(Lcom/pad/android/xappad/AdController;)V

    .line 341
    const-string v5, "0"

    .line 336
    invoke-direct/range {v0 .. v5}, Lcom/pad/android/util/AdOptinRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Lcom/pad/android/listener/AdOptinListener;Ljava/lang/String;)V

    .line 342
    .local v0, opt:Lcom/pad/android/util/AdOptinRequest;
    new-array v1, v10, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pad/android/util/AdOptinRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 365
    .end local v0           #opt:Lcom/pad/android/util/AdOptinRequest;
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const-string v1, "notset"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 348
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "SD_APP_OPTIN_SHOWN"

    const-string v2, "invalid"

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 349
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 353
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v1, "LBAdController"

    const-string v2, "optin already done - loadNotification"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-boolean v1, p0, Lcom/pad/android/xappad/AdController;->initialized:Z

    if-nez v1, :cond_0

    .line 357
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->useNotification:Z

    .line 358
    iput-boolean v10, p0, Lcom/pad/android/xappad/AdController;->loadIcon:Z

    .line 359
    const-string v1, "App"

    iput-object v1, p0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    .line 360
    iput-boolean v10, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    .line 361
    iput-boolean v10, p0, Lcom/pad/android/xappad/AdController;->onRequest:Z

    .line 362
    invoke-virtual {p0}, Lcom/pad/android/xappad/AdController;->initialize()V

    goto :goto_0
.end method

.method public loadNotificationOnRequest(Ljava/lang/String;)V
    .locals 3
    .parameter "launchtype"

    .prologue
    const/4 v2, 0x1

    .line 709
    const-string v0, "App"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Alarm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    :cond_0
    const-string v0, "LBAdController"

    const-string v1, "loadNotificationOnRequest called"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iput-object p1, p0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    .line 714
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->initialized:Z

    if-nez v0, :cond_1

    .line 716
    iput-boolean v2, p0, Lcom/pad/android/xappad/AdController;->useNotification:Z

    .line 717
    iput-boolean v2, p0, Lcom/pad/android/xappad/AdController;->onRequest:Z

    .line 718
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    .line 719
    invoke-virtual {p0}, Lcom/pad/android/xappad/AdController;->initialize()V

    .line 730
    :goto_0
    return-void

    .line 723
    :cond_1
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->loadNotificationDetails()V

    goto :goto_0

    .line 728
    :cond_2
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal use of loadNotificationOnRequest. LaunchType used = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadOptin(Landroid/app/Activity;Ljava/lang/String;Lcom/pad/android/listener/AdOptinListener;)V
    .locals 6
    .parameter "act"
    .parameter "section"
    .parameter "oListener"

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 175
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 177
    new-instance v0, Lcom/pad/android/util/AdOptinRequest;

    const/4 v3, 0x0

    const-string v5, "1"

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pad/android/util/AdOptinRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Lcom/pad/android/listener/AdOptinListener;Ljava/lang/String;)V

    .line 178
    .local v0, optin:Lcom/pad/android/util/AdOptinRequest;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pad/android/util/AdOptinRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    .end local v0           #optin:Lcom/pad/android/util/AdOptinRequest;
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string v1, "com.pad.android.xappad.AdController"

    const-string v2, "Activity required for loadOptin - incorrect value passed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pauseNotification()V
    .locals 6

    .prologue
    .line 122
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v4, "Preference"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 123
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 125
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SD_ADSTATUS_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hidden"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    invoke-virtual {p0}, Lcom/pad/android/xappad/AdController;->setPauseAlarm()V

    .line 129
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->listenNotif:Lcom/pad/android/listener/AdNotificationListener;

    if-eqz v3, :cond_0

    .line 133
    :try_start_0
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->listenNotif:Lcom/pad/android/listener/AdNotificationListener;

    invoke-interface {v3}, Lcom/pad/android/listener/AdNotificationListener;->onAdNotificationPaused()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LBAdController"

    invoke-static {v3, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 138
    const-string v3, "LBAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error with notification listener "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeNotification()V
    .locals 6

    .prologue
    .line 151
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v4, "Preference"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 152
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 154
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SD_ADSTATUS_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setResumeAlarm()V

    .line 157
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->listenNotif:Lcom/pad/android/listener/AdNotificationListener;

    if-eqz v3, :cond_0

    .line 161
    :try_start_0
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->listenNotif:Lcom/pad/android/listener/AdNotificationListener;

    invoke-interface {v3}, Lcom/pad/android/listener/AdNotificationListener;->onAdNotificationResumed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LBAdController"

    invoke-static {v3, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 166
    const-string v3, "LBAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error with notification listener "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAsynchTask(Z)V
    .locals 0
    .parameter "asynch"

    .prologue
    .line 97
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public setPauseAlarm()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 505
    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    .line 507
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-class v7, Lcom/pad/android/xappad/AdNotification;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "sectionid"

    iget-object v7, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const/high16 v7, 0x800

    invoke-static {v6, v8, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 512
    .local v4, now:J
    const-wide/32 v6, 0x5a4e9000

    add-long v2, v4, v6

    .line 516
    .local v2, newStartTimeTime:J
    :try_start_0
    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 518
    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v2, v3, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, ex:Ljava/lang/Exception;
    const-string v6, "LBAdController"

    invoke-static {v6, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 522
    const-string v6, "LBAdController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error while trying to set pause alarm - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setResults(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "res"

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 198
    iput-object p1, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    .line 200
    :cond_0
    return-void
.end method

.method public setSectionId(Ljava/lang/String;)V
    .locals 0
    .parameter "sid"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    .line 80
    return-void
.end method
