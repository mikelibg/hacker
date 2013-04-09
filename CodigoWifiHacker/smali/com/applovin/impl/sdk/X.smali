.class Lcom/applovin/impl/sdk/X;
.super Lcom/applovin/impl/sdk/T;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/applovin/impl/sdk/W;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/W;Ljava/lang/String;Lcom/applovin/impl/sdk/y;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/X;->b:Lcom/applovin/impl/sdk/W;

    iput-object p5, p0, Lcom/applovin/impl/sdk/X;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/T;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/y;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/16 v0, 0x190

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/X;->b:Lcom/applovin/impl/sdk/W;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/W;->c()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/X;->e:Lcom/applovin/sdk/Logger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/X;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to track conversion: server responded with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/h;Lcom/applovin/impl/sdk/i;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/X;->b:Lcom/applovin/impl/sdk/W;

    iget-object v1, p0, Lcom/applovin/impl/sdk/X;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/W;->a(Lcom/applovin/impl/sdk/W;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/X;->b:Lcom/applovin/impl/sdk/W;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/W;->c()V

    return-void
.end method
