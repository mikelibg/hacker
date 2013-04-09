.class public Lcom/applovin/sdk/AppLovinAd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/applovin/sdk/AppLovinAdSize;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No html specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No size specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/applovin/sdk/AppLovinAd;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/sdk/AppLovinAd;->b:Lcom/applovin/sdk/AppLovinAdSize;

    iput-object p3, p0, Lcom/applovin/sdk/AppLovinAd;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/sdk/AppLovinAd;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClickTrackerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinAd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinAd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinAdSize;
    .locals 1

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinAd;->b:Lcom/applovin/sdk/AppLovinAdSize;

    return-object v0
.end method
