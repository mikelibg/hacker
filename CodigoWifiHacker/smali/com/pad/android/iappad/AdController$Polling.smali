.class Lcom/pad/android/iappad/AdController$Polling;
.super Landroid/os/AsyncTask;
.source "AdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/iappad/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Polling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/iappad/AdController;


# direct methods
.method private constructor <init>(Lcom/pad/android/iappad/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 2239
    iput-object p1, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pad/android/iappad/AdController;Lcom/pad/android/iappad/AdController$Polling;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2239
    invoke-direct {p0, p1}, Lcom/pad/android/iappad/AdController$Polling;-><init>(Lcom/pad/android/iappad/AdController;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pad/android/iappad/AdController$Polling;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "pollUrl"

    .prologue
    const/4 v6, 0x0

    .line 2244
    const-string v5, "0"

    .line 2245
    .local v5, success:Ljava/lang/String;
    aget-object v6, p1, v6

    if-eqz v6, :cond_0

    .line 2247
    const-string v6, "LBAdController"

    const-string v7, "Polling..."

    invoke-static {v6, v7}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2251
    .local v1, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;
    invoke-static {v7}, Lcom/pad/android/iappad/AdController;->access$0(Lcom/pad/android/iappad/AdController;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2254
    .local v2, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 2255
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 2257
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 2258
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 2260
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 2261
    .local v3, instream:Ljava/io/InputStream;
    invoke-static {v3}, Lcom/pad/android/util/AdUtilFuncs;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 2262
    const-string v6, "LBAdController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Polling Result - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2269
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v1           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v2           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #instream:Ljava/io/InputStream;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v5

    .line 2267
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pad/android/iappad/AdController$Polling;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "res"

    .prologue
    .line 2274
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$1(Lcom/pad/android/iappad/AdController;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$1(Lcom/pad/android/iappad/AdController;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2276
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$1(Lcom/pad/android/iappad/AdController;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2278
    :cond_0
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->pollCount:I
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$2(Lcom/pad/android/iappad/AdController;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/pad/android/iappad/AdController;->pollCount:I
    invoke-static {v1, v2}, Lcom/pad/android/iappad/AdController;->access$3(Lcom/pad/android/iappad/AdController;I)V

    .line 2279
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2283
    :try_start_0
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->pollCount:I
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$2(Lcom/pad/android/iappad/AdController;)I

    move-result v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->pollMax:I
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$4(Lcom/pad/android/iappad/AdController;)I

    move-result v2

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->pollCount:I
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$2(Lcom/pad/android/iappad/AdController;)I

    move-result v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->pollManual:I
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$5(Lcom/pad/android/iappad/AdController;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2285
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->pollingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$6(Lcom/pad/android/iappad/AdController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->adPolling:Lcom/pad/android/iappad/AdController$OfferPolling;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$7(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/iappad/AdController$OfferPolling;

    move-result-object v2

    iget-object v3, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/pad/android/iappad/AdController;->access$8(Lcom/pad/android/iappad/AdController;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pollinterval"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2313
    :cond_1
    :goto_0
    return-void

    .line 2289
    :cond_2
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #calls: Lcom/pad/android/iappad/AdController;->showManualPoll()V
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$9(Lcom/pad/android/iappad/AdController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2292
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2294
    :cond_3
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2296
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    const/4 v2, 0x1

    #setter for: Lcom/pad/android/iappad/AdController;->completed:Z
    invoke-static {v1, v2}, Lcom/pad/android/iappad/AdController;->access$10(Lcom/pad/android/iappad/AdController;Z)V

    .line 2297
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #calls: Lcom/pad/android/iappad/AdController;->closeUnlocker()V
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$11(Lcom/pad/android/iappad/AdController;)V

    .line 2298
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$12(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/listener/AdListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2303
    :try_start_1
    const-string v1, "LBAdController"

    const-string v2, "onAdCompleted triggered"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$Polling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$12(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/listener/AdListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/pad/android/listener/AdListener;->onAdCompleted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2306
    :catch_1
    move-exception v0

    .line 2308
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LBAdController"

    const-string v2, "error when onAdCompleted triggered"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
