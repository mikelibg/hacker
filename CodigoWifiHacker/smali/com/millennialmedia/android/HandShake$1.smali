.class Lcom/millennialmedia/android/HandShake$1;
.super Ljava/lang/Object;
.source "HandShake.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/HandShake;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/HandShake;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 261
    new-instance v5, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v5}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 262
    .local v5, getRequest:Lcom/millennialmedia/android/HttpGetRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    move-object/from16 v17, v0

    #getter for: Lcom/millennialmedia/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;
    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/android/HandShake;->access$000(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Context;

    .line 263
    .local v14, tempContext:Landroid/content/Context;
    if-nez v14, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    :try_start_0
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 271
    .local v10, metrics:Landroid/util/DisplayMetrics;
    iget v12, v10, Landroid/util/DisplayMetrics;->density:F

    .line 272
    .local v12, scale:F
    iget v7, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 273
    .local v7, heightPixels:I
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 278
    .local v16, widthPixels:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v6, handshakeUrlBuilder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/millennialmedia/android/HandShake;->hdid:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 281
    invoke-static {v14}, Lcom/millennialmedia/android/MMAdViewSDK;->getHdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, auid:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_2

    .line 286
    const-string v17, "mmh_"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 287
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&hdid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_2
    :goto_2
    invoke-static {v14}, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 292
    .local v11, mmdid:Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 293
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&mmdid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_3
    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v17, :cond_4

    .line 296
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&dm="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_4
    sget-object v17, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v17, :cond_5

    .line 298
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&dv=Android"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&density="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&hpx="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&wpx="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-static {v14}, Lcom/millennialmedia/android/MMAdViewController;->getURLDeviceValues(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, deviceValues:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&mmisdk="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "4.5.1-12.2.2.a"

    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    .line 307
    .local v9, locale:Ljava/util/Locale;
    if-eqz v9, :cond_6

    .line 308
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&language="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "&country="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_6
    invoke-static {}, Lcom/millennialmedia/android/HandShake;->access$100()Lcom/millennialmedia/android/HandShake;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/millennialmedia/android/HandShake;->getSchemesList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 311
    .local v13, schemes:Ljava/lang/String;
    if-eqz v13, :cond_7

    .line 312
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&appsids="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_7
    invoke-static {v14}, Lcom/millennialmedia/android/MMAdViewController;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 315
    .local v15, vid:Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 316
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&vid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_8
    invoke-static {v14}, Lcom/millennialmedia/android/MMAdViewController;->getURLDeviceValues(Landroid/content/Context;)Ljava/lang/String;

    .line 320
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "http://ads.mp.mydas.mobi/appConfigServlet?apid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 321
    .local v8, httpResponse:Lorg/apache/http/HttpResponse;
    if-eqz v8, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    move-object/from16 v18, v0

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/millennialmedia/android/HandShake;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static/range {v18 .. v19}, Lcom/millennialmedia/android/HandShake;->access$200(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    #calls: Lcom/millennialmedia/android/HandShake;->deserializeFromObj(Lorg/json/JSONObject;Landroid/content/Context;)V
    invoke-static {v0, v1, v14}, Lcom/millennialmedia/android/HandShake;->access$300(Lcom/millennialmedia/android/HandShake;Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/millennialmedia/android/HandShake;->saveHandShake(Landroid/content/Context;)V
    invoke-static {v0, v14}, Lcom/millennialmedia/android/HandShake;->access$400(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    move-object/from16 v17, v0

    #getter for: Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/android/HandShake;->access$700(Lcom/millennialmedia/android/HandShake;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    move-object/from16 v18, v0

    #getter for: Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/millennialmedia/android/HandShake;->access$500(Lcom/millennialmedia/android/HandShake;)Ljava/lang/Runnable;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    move-object/from16 v19, v0

    #getter for: Lcom/millennialmedia/android/HandShake;->handShakeCallback:J
    invoke-static/range {v19 .. v19}, Lcom/millennialmedia/android/HandShake;->access$600(Lcom/millennialmedia/android/HandShake;)J

    move-result-wide v19

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 326
    .end local v2           #auid:Ljava/lang/String;
    .end local v3           #deviceValues:Ljava/lang/String;
    .end local v6           #handshakeUrlBuilder:Ljava/lang/StringBuilder;
    .end local v7           #heightPixels:I
    .end local v8           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v9           #locale:Ljava/util/Locale;
    .end local v10           #metrics:Landroid/util/DisplayMetrics;
    .end local v11           #mmdid:Ljava/lang/String;
    .end local v12           #scale:F
    .end local v13           #schemes:Ljava/lang/String;
    .end local v15           #vid:Ljava/lang/String;
    .end local v16           #widthPixels:I
    :catch_0
    move-exception v4

    .line 327
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 283
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v6       #handshakeUrlBuilder:Ljava/lang/StringBuilder;
    .restart local v7       #heightPixels:I
    .restart local v10       #metrics:Landroid/util/DisplayMetrics;
    .restart local v12       #scale:F
    .restart local v16       #widthPixels:I
    :cond_9
    :try_start_1
    invoke-static {v14}, Lcom/millennialmedia/android/MMAdViewSDK;->getAuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #auid:Ljava/lang/String;
    goto/16 :goto_1

    .line 289
    :cond_a
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&auid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
