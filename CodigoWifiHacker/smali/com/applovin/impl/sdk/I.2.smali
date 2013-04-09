.class Lcom/applovin/impl/sdk/I;
.super Lcom/applovin/impl/sdk/F;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/applovin/impl/sdk/H;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/H;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/I;->b:Lcom/applovin/impl/sdk/H;

    iput-object p5, p0, Lcom/applovin/impl/sdk/I;->a:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/F;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/F;->a(Ljava/util/Map;)V

    const-string v0, "p"

    const-string v1, "p"

    iget-object v2, p0, Lcom/applovin/impl/sdk/I;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/H;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_id"

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/applovin/impl/sdk/I;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/H;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "api_key"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
