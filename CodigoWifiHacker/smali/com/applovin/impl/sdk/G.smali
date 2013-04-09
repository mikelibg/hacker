.class Lcom/applovin/impl/sdk/G;
.super Lcom/applovin/impl/sdk/T;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/F;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/F;Ljava/lang/String;Lcom/applovin/impl/sdk/y;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/G;->a:Lcom/applovin/impl/sdk/F;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/T;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/y;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/G;->a:Lcom/applovin/impl/sdk/F;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/F;->a(I)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/h;Lcom/applovin/impl/sdk/i;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/G;->a:Lcom/applovin/impl/sdk/F;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/F;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/G;->a:Lcom/applovin/impl/sdk/F;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/F;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/G;->a:Lcom/applovin/impl/sdk/F;

    invoke-virtual {v0, p2}, Lcom/applovin/impl/sdk/F;->a(I)V

    goto :goto_0
.end method
