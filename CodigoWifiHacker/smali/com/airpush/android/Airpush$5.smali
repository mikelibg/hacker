.class Lcom/airpush/android/Airpush$5;
.super Ljava/lang/Object;
.source "Airpush.java"

# interfaces
.implements Lcom/airpush/android/AsyncTaskCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airpush/android/Airpush;->startSmartWallAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airpush/android/AsyncTaskCompleteListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/Airpush;


# direct methods
.method constructor <init>(Lcom/airpush/android/Airpush;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/Airpush$5;->this$0:Lcom/airpush/android/Airpush;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lauchNewHttpTask()V
    .locals 4

    .prologue
    .line 429
    invoke-static {}, Lcom/airpush/android/Airpush;->access$0()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Airpush;->showLoader(Landroid/content/Context;)V

    .line 431
    invoke-static {}, Lcom/airpush/android/Airpush;->access$0()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 433
    .local v1, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interstitial values: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 436
    new-instance v0, Lcom/airpush/android/HttpPostDataTask;

    invoke-static {}, Lcom/airpush/android/Airpush;->access$0()Landroid/content/Context;

    move-result-object v2

    const-string v3, "https://api.airpush.com/lp/getinterstitialads.php"

    invoke-direct {v0, v2, v1, v3, p0}, Lcom/airpush/android/HttpPostDataTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/airpush/android/AsyncTaskCompleteListener;)V

    .line 438
    .local v0, httpPostTask:Lcom/airpush/android/HttpPostDataTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/airpush/android/HttpPostDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 439
    return-void
.end method

.method public bridge synthetic onTaskComplete(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airpush/android/Airpush$5;->onTaskComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onTaskComplete(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 393
    invoke-static {}, Lcom/airpush/android/Airpush;->hideLoader()V

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interstitial JSON: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    .line 398
    if-nez p1, :cond_0

    .line 423
    :goto_0
    return-void

    .line 400
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 401
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v3, "adtype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, ""

    .line 404
    .local v0, adtype:Ljava/lang/String;
    :goto_1
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "AW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    iget-object v3, p0, Lcom/airpush/android/Airpush$5;->this$0:Lcom/airpush/android/Airpush;

    invoke-virtual {v3, p1}, Lcom/airpush/android/Airpush;->parseAppWallJson(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 422
    .end local v0           #adtype:Ljava/lang/String;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :cond_1
    :goto_2
    invoke-static {}, Lcom/airpush/android/Airpush;->hideLoader()V

    goto :goto_0

    .line 401
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v3, "adtype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 406
    .restart local v0       #adtype:Ljava/lang/String;
    :cond_3
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "DAU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "DCC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "DCM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 408
    :cond_4
    iget-object v3, p0, Lcom/airpush/android/Airpush$5;->this$0:Lcom/airpush/android/Airpush;

    invoke-virtual {v3, p1}, Lcom/airpush/android/Airpush;->parseDialogAdJson(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 414
    .end local v0           #adtype:Ljava/lang/String;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 415
    .local v1, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/airpush/android/Airpush;->hideLoader()V

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in Smart Wall json: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto :goto_2

    .line 409
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #adtype:Ljava/lang/String;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_5
    :try_start_2
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "FP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    iget-object v3, p0, Lcom/airpush/android/Airpush$5;->this$0:Lcom/airpush/android/Airpush;

    invoke-virtual {v3, p1}, Lcom/airpush/android/Airpush;->parseLandingPageAdJson(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 418
    .end local v0           #adtype:Ljava/lang/String;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 419
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/airpush/android/Airpush;->hideLoader()V

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occured in Smart Wall: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto :goto_2
.end method
