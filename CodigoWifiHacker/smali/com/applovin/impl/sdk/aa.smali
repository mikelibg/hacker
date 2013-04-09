.class Lcom/applovin/impl/sdk/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/i;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/Z;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/Z;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/Z;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/Z;->c()V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/Z;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/Z;->b()V

    return-void
.end method
