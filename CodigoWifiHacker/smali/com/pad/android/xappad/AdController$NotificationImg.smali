.class Lcom/pad/android/xappad/AdController$NotificationImg;
.super Landroid/os/AsyncTask;
.source "AdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/xappad/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationImg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private contentIntent:Landroid/app/PendingIntent;

.field private contentText:Ljava/lang/CharSequence;

.field private contentTitle:Ljava/lang/CharSequence;

.field private icon:I

.field private nM:Landroid/app/NotificationManager;

.field private text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/pad/android/xappad/AdController;


# direct methods
.method public constructor <init>(Lcom/pad/android/xappad/AdController;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter
    .parameter "ic"
    .parameter "txt"
    .parameter "cTitle"
    .parameter "cText"
    .parameter "notif"
    .parameter "cI"

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    .line 1012
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1014
    iput p2, p0, Lcom/pad/android/xappad/AdController$NotificationImg;->icon:I

    .line 1015
    iput-object p3, p0, Lcom/pad/android/xappad/AdController$NotificationImg;->text:Ljava/lang/CharSequence;

    .line 1016
    iput-object p4, p0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentTitle:Ljava/lang/CharSequence;

    .line 1017
    iput-object p5, p0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentText:Ljava/lang/CharSequence;

    .line 1018
    iput-object p6, p0, Lcom/pad/android/xappad/AdController$NotificationImg;->nM:Landroid/app/NotificationManager;

    .line 1019
    iput-object p7, p0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentIntent:Landroid/app/PendingIntent;

    .line 1020
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    .line 1025
    const/4 v6, 0x0

    aget-object v5, p1, v6

    .line 1026
    .local v5, url:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1031
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v4, ulrn:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 1033
    .local v1, con:Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1034
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1042
    .end local v1           #con:Ljava/net/HttpURLConnection;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #ulrn:Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v0

    .line 1037
    :catch_0
    move-exception v2

    .line 1039
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pad/android/xappad/AdController$NotificationImg;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 33
    .parameter "res"

    .prologue
    .line 1048
    const/16 v29, 0x0

    .line 1049
    .local v29, success:Z
    if-eqz p1, :cond_2

    .line 1052
    const/16 v27, -0x1

    .local v27, mainView:I
    const/16 v30, -0x1

    .local v30, textView:I
    const/16 v19, -0x1

    .local v19, bannerViewImg:I
    const/16 v20, -0x1

    .line 1055
    .local v20, bannerViewTxt:I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".R$layout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    .line 1056
    .local v26, layoutCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "xappad_notification"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v21

    .line 1057
    .local v21, customLayout:I
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".R$id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v24

    .line 1058
    .local v24, idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "xappad_mainview"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v27

    .line 1059
    const-string v3, "xappad_customtextview"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v30

    .line 1060
    const-string v3, "xappad_bannerviewimg"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v19

    .line 1061
    const-string v3, "xappad_bannerviewtext"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v20

    .line 1062
    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_1

    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_1

    .line 1064
    new-instance v10, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v21

    invoke-direct {v10, v3, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    .local v10, rv:Landroid/widget/RemoteViews;
    :try_start_1
    const-string v3, "setBackgroundColor"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "notificationbannerbackground"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    move/from16 v0, v27

    invoke-virtual {v10, v0, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1069
    :goto_0
    :try_start_2
    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "notificationbannertext"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1073
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "notificationbannertextcolor"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move/from16 v0, v20

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1075
    :goto_1
    const/4 v3, 0x4

    :try_start_4
    move/from16 v0, v30

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->icon:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->nM:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentIntent:Landroid/app/PendingIntent;

    #calls: Lcom/pad/android/xappad/AdController;->triggerNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    invoke-static/range {v3 .. v10}, Lcom/pad/android/xappad/AdController;->access$2(Lcom/pad/android/xappad/AdController;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v29

    .line 1094
    .end local v10           #rv:Landroid/widget/RemoteViews;
    .end local v19           #bannerViewImg:I
    .end local v20           #bannerViewTxt:I
    .end local v21           #customLayout:I
    .end local v24           #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v26           #layoutCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v27           #mainView:I
    .end local v30           #textView:I
    :goto_2
    if-eqz v29, :cond_0

    .line 1096
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "Preference"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    .line 1097
    .local v28, pref:Landroid/content/SharedPreferences;
    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    .line 1098
    .local v23, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    .line 1099
    .local v31, when:J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SD_NOTIFICATION_ID_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;
    invoke-static {v4}, Lcom/pad/android/xappad/AdController;->access$3(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 1102
    .local v25, lastid:I
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SD_NOTIFICATION_FIRED_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;
    invoke-static {v4}, Lcom/pad/android/xappad/AdController;->access$3(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-wide/from16 v1, v31

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1103
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1110
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "notificationmultiple"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1113
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SD_NOTIFICATION_ID_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;
    invoke-static {v4}, Lcom/pad/android/xappad/AdController;->access$3(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1114
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1119
    .end local v23           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v25           #lastid:I
    .end local v28           #pref:Landroid/content/SharedPreferences;
    .end local v31           #when:J
    :cond_0
    :goto_4
    return-void

    .line 1081
    .restart local v19       #bannerViewImg:I
    .restart local v20       #bannerViewTxt:I
    .restart local v21       #customLayout:I
    .restart local v24       #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v26       #layoutCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v27       #mainView:I
    .restart local v30       #textView:I
    :cond_1
    :try_start_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->icon:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->nM:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #calls: Lcom/pad/android/xappad/AdController;->triggerNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    invoke-static/range {v11 .. v18}, Lcom/pad/android/xappad/AdController;->access$2(Lcom/pad/android/xappad/AdController;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result v29

    goto/16 :goto_2

    .line 1084
    .end local v21           #customLayout:I
    .end local v24           #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v26           #layoutCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v22

    .line 1086
    .local v22, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->icon:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->nM:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #calls: Lcom/pad/android/xappad/AdController;->triggerNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    invoke-static/range {v11 .. v18}, Lcom/pad/android/xappad/AdController;->access$2(Lcom/pad/android/xappad/AdController;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z

    move-result v29

    goto/16 :goto_2

    .line 1091
    .end local v19           #bannerViewImg:I
    .end local v20           #bannerViewTxt:I
    .end local v22           #e:Ljava/lang/Exception;
    .end local v27           #mainView:I
    .end local v30           #textView:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->icon:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->nM:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$NotificationImg;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #calls: Lcom/pad/android/xappad/AdController;->triggerNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    invoke-static/range {v11 .. v18}, Lcom/pad/android/xappad/AdController;->access$2(Lcom/pad/android/xappad/AdController;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z

    move-result v29

    goto/16 :goto_2

    .line 1117
    .restart local v23       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v25       #lastid:I
    .restart local v28       #pref:Landroid/content/SharedPreferences;
    .restart local v31       #when:J
    :catch_1
    move-exception v3

    goto :goto_4

    .line 1105
    :catch_2
    move-exception v3

    goto/16 :goto_3

    .line 1074
    .end local v23           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v25           #lastid:I
    .end local v28           #pref:Landroid/content/SharedPreferences;
    .end local v31           #when:J
    .restart local v10       #rv:Landroid/widget/RemoteViews;
    .restart local v19       #bannerViewImg:I
    .restart local v20       #bannerViewTxt:I
    .restart local v21       #customLayout:I
    .restart local v24       #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v26       #layoutCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v27       #mainView:I
    .restart local v30       #textView:I
    :catch_3
    move-exception v3

    goto/16 :goto_1

    .line 1068
    :catch_4
    move-exception v3

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/pad/android/xappad/AdController$NotificationImg;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
