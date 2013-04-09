.class Lcom/applovin/impl/sdk/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/l;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/m;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/o;)I
    .locals 4

    iget-wide v0, p1, Lcom/applovin/impl/sdk/o;->d:J

    iget-wide v2, p2, Lcom/applovin/impl/sdk/o;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/applovin/impl/sdk/o;->d:J

    iget-wide v2, p2, Lcom/applovin/impl/sdk/o;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/applovin/impl/sdk/o;

    check-cast p2, Lcom/applovin/impl/sdk/o;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/m;->a(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/o;)I

    move-result v0

    return v0
.end method
