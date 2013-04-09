.class Lcom/applovin/impl/sdk/V;
.super Lcom/applovin/impl/sdk/T;


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAd;


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    const-string v0, "TrackClick"

    sget-object v1, Lcom/applovin/impl/sdk/w;->k:Lcom/applovin/impl/sdk/y;

    invoke-direct {p0, v0, v1, p2}, Lcom/applovin/impl/sdk/T;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/y;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No clicked ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/V;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/A;

    move-result-object v0

    const-string v1, "clk_req"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/A;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/V;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/j;->b(ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/h;Lcom/applovin/impl/sdk/i;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/V;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinAd;->getClickTrackerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/V;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/A;

    move-result-object v0

    const-string v1, "clk_trk"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/A;->a(Ljava/lang/String;)V

    return-void
.end method
