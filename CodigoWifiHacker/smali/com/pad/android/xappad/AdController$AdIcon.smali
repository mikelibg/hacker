.class Lcom/pad/android/xappad/AdController$AdIcon;
.super Landroid/os/AsyncTask;
.source "AdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/xappad/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdIcon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/xappad/AdController;


# direct methods
.method private constructor <init>(Lcom/pad/android/xappad/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pad/android/xappad/AdController;Lcom/pad/android/xappad/AdController$AdIcon;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1195
    invoke-direct {p0, p1}, Lcom/pad/android/xappad/AdController$AdIcon;-><init>(Lcom/pad/android/xappad/AdController;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pad/android/xappad/AdController$AdIcon;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 24
    .parameter "params"

    .prologue
    .line 1202
    :try_start_0
    const-string v20, "LBAdController"

    const-string v21, "going to display icon"

    invoke-static/range {v20 .. v21}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v3, "Search"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1206
    .local v3, adText:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v20, v0

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static/range {v20 .. v20}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v20

    const-string v21, "adname"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1212
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v20, v0

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v20

    const-string v21, "Preference"

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1213
    .local v16, pref:Landroid/content/SharedPreferences;
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "SD_ICON_DISPLAY_"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v21, v0

    #getter for: Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/pad/android/xappad/AdController;->access$3(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1214
    .local v10, displayCount:I
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ge v10, v0, :cond_1

    .line 1217
    const-string v20, "LBAdController"

    const-string v21, "MAX count not passed so display icon"

    invoke-static/range {v20 .. v21}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const v11, 0x1080059

    .line 1219
    .local v11, displayIconInt:I
    new-instance v17, Landroid/content/Intent;

    const-string v20, "android.intent.action.VIEW"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v22, v0

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static/range {v22 .. v22}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "adurl"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v22, v0

    #getter for: Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/pad/android/xappad/AdController;->access$3(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1220
    .local v17, shortcutIntent:Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1221
    .local v4, addIntent:Landroid/content/Intent;
    const-string v20, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1222
    const-string v20, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1225
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v20, v0

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static/range {v20 .. v20}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v20

    const-string v21, "adiconurl"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1226
    .local v19, url1:Ljava/lang/String;
    new-instance v18, Ljava/net/URL;

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1227
    .local v18, ulrn:Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 1228
    .local v6, con:Ljava/net/HttpURLConnection;
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 1229
    .local v14, is:Ljava/io/InputStream;
    invoke-static {v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1231
    .local v5, bmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v20, v0

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v20

    const-string v21, "window"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 1232
    .local v9, display:Landroid/view/Display;
    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1233
    .local v15, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v9, v15}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1236
    const/16 v8, 0xf0

    .line 1237
    .local v8, density:I
    invoke-virtual {v5, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1238
    const/16 v20, 0x48

    const/16 v21, 0x48

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1240
    if-eqz v5, :cond_0

    .line 1242
    const-string v20, "LBAdController"

    const-string v21, "bitmap not null"

    invoke-static/range {v20 .. v21}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v20, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1263
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #con:Ljava/net/HttpURLConnection;
    .end local v8           #density:I
    .end local v9           #display:Landroid/view/Display;
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #metrics:Landroid/util/DisplayMetrics;
    .end local v18           #ulrn:Ljava/net/URL;
    :goto_1
    :try_start_4
    const-string v20, "com.android.launcher.action.INSTALL_SHORTCUT"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v20, v0

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1267
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 1268
    .local v13, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "SD_ICON_DISPLAY_"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v21, v0

    #getter for: Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/pad/android/xappad/AdController;->access$3(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    add-int/lit8 v21, v10, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1269
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1276
    .end local v4           #addIntent:Landroid/content/Intent;
    .end local v11           #displayIconInt:I
    .end local v13           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v17           #shortcutIntent:Landroid/content/Intent;
    .end local v19           #url1:Ljava/lang/String;
    :goto_2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1277
    .local v7, cv:Landroid/content/ContentValues;
    const-string v20, "title"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v20, "url"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v22, v0

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static/range {v22 .. v22}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "adurl"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v22, v0

    #getter for: Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/pad/android/xappad/AdController;->access$3(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const-string v20, "bookmark"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1282
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v20, v0

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1283
    const-string v20, "LBAdController"

    const-string v21, "bookmark inserted successfully"

    invoke-static/range {v20 .. v21}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1295
    .end local v3           #adText:Ljava/lang/String;
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v10           #displayCount:I
    .end local v16           #pref:Landroid/content/SharedPreferences;
    :goto_3
    const/16 v20, 0x0

    return-object v20

    .line 1208
    .restart local v3       #adText:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1210
    .local v12, e:Ljava/lang/Exception;
    :try_start_6
    const-string v20, "LBAdController"

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 1290
    .end local v3           #adText:Ljava/lang/String;
    .end local v12           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v12

    .line 1292
    .restart local v12       #e:Ljava/lang/Exception;
    const-string v20, "LBAdController"

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1293
    const-string v20, "LBAdController"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Error when setting icon - "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1247
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v3       #adText:Ljava/lang/String;
    .restart local v4       #addIntent:Landroid/content/Intent;
    .restart local v5       #bmp:Landroid/graphics/Bitmap;
    .restart local v6       #con:Ljava/net/HttpURLConnection;
    .restart local v8       #density:I
    .restart local v9       #display:Landroid/view/Display;
    .restart local v10       #displayCount:I
    .restart local v11       #displayIconInt:I
    .restart local v14       #is:Ljava/io/InputStream;
    .restart local v15       #metrics:Landroid/util/DisplayMetrics;
    .restart local v16       #pref:Landroid/content/SharedPreferences;
    .restart local v17       #shortcutIntent:Landroid/content/Intent;
    .restart local v18       #ulrn:Ljava/net/URL;
    .restart local v19       #url1:Ljava/lang/String;
    :cond_0
    :try_start_7
    const-string v20, "LBAdController"

    const-string v21, "bitmap null"

    invoke-static/range {v20 .. v21}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v20, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v21, v0

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v11}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 1251
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #con:Ljava/net/HttpURLConnection;
    .end local v8           #density:I
    .end local v9           #display:Landroid/view/Display;
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #metrics:Landroid/util/DisplayMetrics;
    .end local v18           #ulrn:Ljava/net/URL;
    .end local v19           #url1:Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 1253
    .restart local v12       #e:Ljava/lang/Exception;
    const/16 v19, 0x0

    .line 1256
    .restart local v19       #url1:Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v20, v0

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static/range {v20 .. v20}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v20

    const-string v21, "adiconurl"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v19

    .line 1259
    :goto_4
    :try_start_9
    const-string v20, "LBAdController"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "exception in getting icon - "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v20, "LBAdController"

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1261
    const-string v20, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    move-object/from16 v21, v0

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v11}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1273
    .end local v4           #addIntent:Landroid/content/Intent;
    .end local v11           #displayIconInt:I
    .end local v12           #e:Ljava/lang/Exception;
    .end local v17           #shortcutIntent:Landroid/content/Intent;
    .end local v19           #url1:Ljava/lang/String;
    :cond_1
    const-string v20, "LBAdController"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "DisplayCount = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", MAX_APP_ICONS = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1285
    .restart local v7       #cv:Landroid/content/ContentValues;
    :catch_3
    move-exception v12

    .line 1287
    .restart local v12       #e:Ljava/lang/Exception;
    const-string v20, "LBAdController"

    const-string v21, "bookmark inserted error"

    invoke-static/range {v20 .. v21}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    .line 1258
    .end local v7           #cv:Landroid/content/ContentValues;
    .restart local v4       #addIntent:Landroid/content/Intent;
    .restart local v11       #displayIconInt:I
    .restart local v17       #shortcutIntent:Landroid/content/Intent;
    .restart local v19       #url1:Ljava/lang/String;
    :catch_4
    move-exception v20

    goto :goto_4
.end method
