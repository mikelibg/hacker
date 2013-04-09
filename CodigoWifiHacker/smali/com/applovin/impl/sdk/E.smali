.class public Lcom/applovin/impl/sdk/E;
.super Lcom/applovin/impl/sdk/F;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {p0, v0, p2, p3}, Lcom/applovin/impl/sdk/F;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/E;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map;)V
    .locals 2

    const-string v0, "inter_id"

    iget-object v1, p0, Lcom/applovin/impl/sdk/E;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lcom/applovin/impl/sdk/F;->run()V

    return-void
.end method
