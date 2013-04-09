.class public Lcom/pad/android/iappad/AdTask;
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
.field private activity:Landroid/app/Activity;

.field private adCon:Lcom/pad/android/iappad/AdController;

.field private loadAudio:Z

.field private results:Lorg/json/JSONObject;

.field private sectionid:Ljava/lang/String;

.field private subid:Ljava/lang/String;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private useLocation:Z


# direct methods
.method public constructor <init>(Lcom/pad/android/iappad/AdController;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "aCon"
    .parameter "act"
    .parameter "sid"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/pad/android/iappad/AdTask;->useLocation:Z

    .line 26
    iput-boolean v0, p0, Lcom/pad/android/iappad/AdTask;->loadAudio:Z

    .line 30
    iput-object p1, p0, Lcom/pad/android/iappad/AdTask;->adCon:Lcom/pad/android/iappad/AdController;

    .line 31
    iput-object p2, p0, Lcom/pad/android/iappad/AdTask;->activity:Landroid/app/Activity;

    .line 32
    iput-object p3, p0, Lcom/pad/android/iappad/AdTask;->sectionid:Ljava/lang/String;

    .line 33
    const-string v0, "audio"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pad/android/iappad/AdTask;->loadAudio:Z

    .line 34
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pad/android/iappad/AdTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 66
    iget-object v3, p0, Lcom/pad/android/iappad/AdTask;->activity:Landroid/app/Activity;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 67
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 68
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 70
    new-instance v2, Lcom/pad/android/util/AdRequest;

    iget-object v3, p0, Lcom/pad/android/iappad/AdTask;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/pad/android/iappad/AdTask;->sectionid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/pad/android/util/AdRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 71
    .local v2, req:Lcom/pad/android/util/AdRequest;
    iget-boolean v3, p0, Lcom/pad/android/iappad/AdTask;->loadAudio:Z

    if-eqz v3, :cond_0

    .line 73
    new-instance v2, Lcom/pad/android/util/AdRequest;

    .end local v2           #req:Lcom/pad/android/util/AdRequest;
    iget-object v3, p0, Lcom/pad/android/iappad/AdTask;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/pad/android/iappad/AdTask;->sectionid:Ljava/lang/String;

    const-string v5, "audio"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/pad/android/util/AdRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .restart local v2       #req:Lcom/pad/android/util/AdRequest;
    :cond_0
    iget-object v3, p0, Lcom/pad/android/iappad/AdTask;->subid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pad/android/util/AdRequest;->setSubId(Ljava/lang/String;)V

    .line 76
    iget-object v3, p0, Lcom/pad/android/iappad/AdTask;->tokens:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/pad/android/util/AdRequest;->setTokens(Ljava/util/List;)V

    .line 77
    iget-boolean v3, p0, Lcom/pad/android/iappad/AdTask;->useLocation:Z

    invoke-virtual {v2, v3}, Lcom/pad/android/util/AdRequest;->setUseLocation(Z)V

    .line 78
    invoke-virtual {v2}, Lcom/pad/android/util/AdRequest;->makeLBRequest()Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/pad/android/iappad/AdTask;->results:Lorg/json/JSONObject;

    .line 80
    .end local v2           #req:Lcom/pad/android/util/AdRequest;
    :cond_1
    return-object v6
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "LBAdController"

    const-string v1, "AdTask cancelled"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 61
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pad/android/iappad/AdTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "res"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/pad/android/iappad/AdTask;->adCon:Lcom/pad/android/iappad/AdController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pad/android/iappad/AdTask;->results:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/pad/android/iappad/AdTask;->adCon:Lcom/pad/android/iappad/AdController;

    iget-object v1, p0, Lcom/pad/android/iappad/AdTask;->results:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/pad/android/iappad/AdController;->setResults(Lorg/json/JSONObject;)V

    .line 88
    iget-object v0, p0, Lcom/pad/android/iappad/AdTask;->adCon:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController;->initialized()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/pad/android/iappad/AdTask;->adCon:Lcom/pad/android/iappad/AdController;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/pad/android/iappad/AdTask;->adCon:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController;->triggerAdFailed()V

    .line 94
    const-string v0, "LBAdController"

    const-string v1, "Failed to get results from server"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 54
    return-void
.end method

.method public setSubId(Ljava/lang/String;)V
    .locals 0
    .parameter "sid"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/pad/android/iappad/AdTask;->subid:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTokens(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, tks:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/pad/android/iappad/AdTask;->tokens:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setUseLocation(Z)V
    .locals 0
    .parameter "uL"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdTask;->useLocation:Z

    .line 49
    return-void
.end method
