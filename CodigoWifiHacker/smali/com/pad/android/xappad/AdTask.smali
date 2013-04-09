.class public Lcom/pad/android/xappad/AdTask;
.super Landroid/os/AsyncTask;
.source "AdTask.java"


# annotations
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
.field private context:Landroid/content/Context;

.field private notifCon:Lcom/pad/android/xappad/AdController;

.field private notificationLaunchType:Ljava/lang/String;

.field private requestType:Ljava/lang/String;

.field private results:Lorg/json/JSONObject;

.field private sectionid:Ljava/lang/String;

.field private useLocation:Z


# direct methods
.method public constructor <init>(Lcom/pad/android/xappad/AdController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "nCon"
    .parameter "ctx"
    .parameter "secid"
    .parameter "type"
    .parameter "nLT"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    const-string v0, "App"

    iput-object v0, p0, Lcom/pad/android/xappad/AdTask;->notificationLaunchType:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pad/android/xappad/AdTask;->useLocation:Z

    .line 24
    iput-object p1, p0, Lcom/pad/android/xappad/AdTask;->notifCon:Lcom/pad/android/xappad/AdController;

    .line 25
    iput-object p2, p0, Lcom/pad/android/xappad/AdTask;->context:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/pad/android/xappad/AdTask;->sectionid:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/pad/android/xappad/AdTask;->requestType:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/pad/android/xappad/AdTask;->notificationLaunchType:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pad/android/xappad/AdTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "params"

    .prologue
    .line 49
    iget-object v3, p0, Lcom/pad/android/xappad/AdTask;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 50
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 51
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 53
    new-instance v2, Lcom/pad/android/util/AdRequest;

    iget-object v3, p0, Lcom/pad/android/xappad/AdTask;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/pad/android/xappad/AdTask;->sectionid:Ljava/lang/String;

    iget-object v5, p0, Lcom/pad/android/xappad/AdTask;->requestType:Ljava/lang/String;

    iget-object v6, p0, Lcom/pad/android/xappad/AdTask;->notificationLaunchType:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/pad/android/util/AdRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v2, req:Lcom/pad/android/util/AdRequest;
    iget-boolean v3, p0, Lcom/pad/android/xappad/AdTask;->useLocation:Z

    invoke-virtual {v2, v3}, Lcom/pad/android/util/AdRequest;->setUseLocation(Z)V

    .line 55
    invoke-virtual {v2}, Lcom/pad/android/util/AdRequest;->makeLBRequest()Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/pad/android/xappad/AdTask;->results:Lorg/json/JSONObject;

    .line 57
    .end local v2           #req:Lcom/pad/android/util/AdRequest;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 44
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pad/android/xappad/AdTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "res"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pad/android/xappad/AdTask;->notifCon:Lcom/pad/android/xappad/AdController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pad/android/xappad/AdTask;->results:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/pad/android/xappad/AdTask;->notifCon:Lcom/pad/android/xappad/AdController;

    iget-object v1, p0, Lcom/pad/android/xappad/AdTask;->results:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/pad/android/xappad/AdController;->setResults(Lorg/json/JSONObject;)V

    .line 65
    iget-object v0, p0, Lcom/pad/android/xappad/AdTask;->notifCon:Lcom/pad/android/xappad/AdController;

    invoke-virtual {v0}, Lcom/pad/android/xappad/AdController;->initialized()V

    .line 67
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 39
    return-void
.end method

.method public setUseLocation(Z)V
    .locals 0
    .parameter "uL"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/pad/android/xappad/AdTask;->useLocation:Z

    .line 34
    return-void
.end method
