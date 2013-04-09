.class public Lcom/pad/android/iappad/AdJSInterface;
.super Ljava/lang/Object;
.source "AdJSInterface.java"


# instance fields
.field private activity:Landroid/content/Context;

.field private controller:Lcom/pad/android/iappad/AdController;

.field private listener:Lcom/pad/android/listener/AdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pad/android/iappad/AdController;Lcom/pad/android/listener/AdListener;)V
    .locals 0
    .parameter "act"
    .parameter "cont"
    .parameter "list"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/pad/android/iappad/AdJSInterface;->activity:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/pad/android/iappad/AdJSInterface;->controller:Lcom/pad/android/iappad/AdController;

    .line 20
    iput-object p3, p0, Lcom/pad/android/iappad/AdJSInterface;->listener:Lcom/pad/android/listener/AdListener;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/pad/android/iappad/AdJSInterface;)Lcom/pad/android/iappad/AdController;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/pad/android/iappad/AdJSInterface;->controller:Lcom/pad/android/iappad/AdController;

    return-object v0
.end method

.method private closeAd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pad/android/iappad/AdJSInterface;->activity:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/pad/android/iappad/AdJSInterface$1;

    invoke-direct {v1, p0}, Lcom/pad/android/iappad/AdJSInterface$1;-><init>(Lcom/pad/android/iappad/AdJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/pad/android/iappad/AdJSInterface;->closeAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public complete()V
    .locals 2

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/pad/android/iappad/AdJSInterface;->controller:Lcom/pad/android/iappad/AdController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pad/android/iappad/AdController;->setCompleted(Z)V

    .line 97
    invoke-direct {p0}, Lcom/pad/android/iappad/AdJSInterface;->closeAd()V

    .line 98
    iget-object v0, p0, Lcom/pad/android/iappad/AdJSInterface;->controller:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController;->triggerAdCompleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public processAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "adaudiourl"
    .parameter "adurl"

    .prologue
    .line 79
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Going to process Audio URLs - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/pad/android/iappad/AdJSInterface;->controller:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v0, p1, p2}, Lcom/pad/android/iappad/AdController;->checkForAudioAd(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public processHTML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "content"
    .parameter "isHtml"
    .parameter "htmlContent"

    .prologue
    const/4 v4, 0x1

    .line 25
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad Count = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    if-eqz p1, :cond_0

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/pad/android/iappad/AdJSInterface;->controller:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v1, v4}, Lcom/pad/android/iappad/AdController;->setAdDestroyed(Z)V

    .line 30
    iget-object v1, p0, Lcom/pad/android/iappad/AdJSInterface;->listener:Lcom/pad/android/listener/AdListener;

    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    const-string v1, "LBAdController"

    const-string v2, "onAdFailed triggered"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/pad/android/iappad/AdJSInterface;->listener:Lcom/pad/android/listener/AdListener;

    invoke-interface {v1}, Lcom/pad/android/listener/AdListener;->onAdFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pad/android/iappad/AdJSInterface;->controller:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v1}, Lcom/pad/android/iappad/AdController;->getAdDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 51
    :try_start_1
    const-string v1, "true"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const-string v1, "LBAdController"

    const-string v2, "Going to show HTML ads!"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/pad/android/iappad/AdJSInterface;->controller:Lcom/pad/android/iappad/AdController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pad/android/iappad/AdController;->setHTMLAds(Z)V

    .line 55
    iget-object v1, p0, Lcom/pad/android/iappad/AdJSInterface;->controller:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v1, p3}, Lcom/pad/android/iappad/AdController;->setHTML(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 58
    :cond_1
    :goto_1
    :try_start_2
    const-string v1, "LBAdController"

    const-string v2, "onAdLoaded triggered"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/pad/android/iappad/AdJSInterface;->controller:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v1}, Lcom/pad/android/iappad/AdController;->getOnAdLoaded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 61
    iget-object v1, p0, Lcom/pad/android/iappad/AdJSInterface;->listener:Lcom/pad/android/listener/AdListener;

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/pad/android/iappad/AdJSInterface;->listener:Lcom/pad/android/listener/AdListener;

    invoke-interface {v1}, Lcom/pad/android/listener/AdListener;->onAdLoaded()V

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/pad/android/iappad/AdJSInterface;->controller:Lcom/pad/android/iappad/AdController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pad/android/iappad/AdController;->setOnAdLoaded(Z)V

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/pad/android/iappad/AdJSInterface;->controller:Lcom/pad/android/iappad/AdController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pad/android/iappad/AdController;->setAdLoaded(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 75
    :cond_4
    :goto_2
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LBAdController"

    const-string v2, "Error while calling onAdFailed"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 71
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "LBAdController"

    const-string v2, "Error while calling onAdLoaded"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 57
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_1
.end method
