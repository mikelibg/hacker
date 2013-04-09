.class Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;
.super Landroid/os/AsyncTask;
.source "LinkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revmob/ads/link/LinkFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRedirector"
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
.field private listener:Lcom/revmob/ads/RevMobAdsListener;

.field private marketUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/revmob/ads/link/LinkFetcher;


# direct methods
.method public constructor <init>(Lcom/revmob/ads/link/LinkFetcher;Lcom/revmob/ads/RevMobAdsListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->this$0:Lcom/revmob/ads/link/LinkFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->listener:Lcom/revmob/ads/RevMobAdsListener;

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 48
    iget-object v3, p0, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->this$0:Lcom/revmob/ads/link/LinkFetcher;

    #getter for: Lcom/revmob/ads/link/LinkFetcher;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/revmob/ads/link/LinkFetcher;->access$000(Lcom/revmob/ads/link/LinkFetcher;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/revmob/ads/EnvironmentConfig;->defaultJsonPayload(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, entity:Ljava/lang/String;
    new-instance v2, Lcom/revmob/ads/internal/MarketRedirector;

    iget-object v3, p0, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->this$0:Lcom/revmob/ads/link/LinkFetcher;

    #getter for: Lcom/revmob/ads/link/LinkFetcher;->url:Ljava/lang/String;
    invoke-static {v3}, Lcom/revmob/ads/link/LinkFetcher;->access$100(Lcom/revmob/ads/link/LinkFetcher;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/revmob/ads/internal/MarketRedirector;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v2, redirector:Lcom/revmob/ads/internal/MarketRedirector;
    :try_start_0
    invoke-virtual {v2}, Lcom/revmob/ads/internal/MarketRedirector;->getMarketUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->marketUrl:Ljava/lang/String;
    :try_end_0
    .catch Lcom/revmob/ads/internal/LocationUrlNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Lcom/revmob/ads/internal/LocationUrlNotFoundException;
    const-string v3, "RevMob"

    const-string v4, "Market url not found in ad link."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->marketUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->listener:Lcom/revmob/ads/RevMobAdsListener;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->listener:Lcom/revmob/ads/RevMobAdsListener;

    const-string v2, "Ad retrieval failed: No ads for this device/country right now"

    invoke-interface {v1, v2}, Lcom/revmob/ads/RevMobAdsListener;->onRevMobAdNotReceived(Ljava/lang/String;)V

    .line 64
    :cond_0
    const-string v1, "RevMob"

    const-string v2, "Ad retrieval failed: No ads for this device/country right now"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->listener:Lcom/revmob/ads/RevMobAdsListener;

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->listener:Lcom/revmob/ads/RevMobAdsListener;

    invoke-interface {v1}, Lcom/revmob/ads/RevMobAdsListener;->onRevMobAdReceived()V

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->this$0:Lcom/revmob/ads/link/LinkFetcher;

    #getter for: Lcom/revmob/ads/link/LinkFetcher;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/revmob/ads/link/LinkFetcher;->access$200(Lcom/revmob/ads/link/LinkFetcher;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->marketUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/revmob/ads/internal/Ad;->createIntentThatOpensURL(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "RevMob"

    const-string v2, "Can\'t open the app store in the simulator."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
