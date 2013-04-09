.class public abstract Lcom/revmob/ads/internal/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected clickUrl:Ljava/lang/String;

.field private redirector:Lcom/revmob/ads/internal/MarketRedirector;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "clickUrl"

    .prologue
    .line 23
    new-instance v0, Lcom/revmob/ads/internal/MarketRedirector;

    invoke-direct {v0, p2}, Lcom/revmob/ads/internal/MarketRedirector;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/revmob/ads/internal/Ad;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/internal/MarketRedirector;)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/internal/MarketRedirector;)V
    .locals 0
    .parameter "activity"
    .parameter "clickUrl"
    .parameter "redirector"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/revmob/ads/internal/Ad;->activity:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Lcom/revmob/ads/internal/Ad;->clickUrl:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/revmob/ads/internal/Ad;->redirector:Lcom/revmob/ads/internal/MarketRedirector;

    .line 30
    return-void
.end method

.method public static createIntentThatOpensURL(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "url"

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public click()V
    .locals 6

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/revmob/ads/internal/Ad;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/revmob/ads/internal/Ad;->redirector:Lcom/revmob/ads/internal/MarketRedirector;

    invoke-virtual {v2}, Lcom/revmob/ads/internal/MarketRedirector;->getMarketUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/revmob/ads/internal/Ad;->createIntentThatOpensURL(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/revmob/ads/internal/LocationUrlNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Lcom/revmob/ads/internal/LocationUrlNotFoundException;
    const-string v1, "RevMob"

    const-string v2, "Market url not found for clickUrl: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/revmob/ads/internal/Ad;->clickUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/revmob/ads/internal/Ad;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/revmob/ads/internal/Ad;->clickUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/revmob/ads/internal/Ad;->createIntentThatOpensURL(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getTargetURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/revmob/ads/internal/Ad;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/revmob/ads/internal/Ad;->activity:Landroid/app/Activity;

    .line 43
    return-void
.end method
